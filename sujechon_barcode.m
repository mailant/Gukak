import edu.stanford.math.plex4.*;

    max_dimension = 3;
    max_filtration_value = 3;
    num_division = 1000;

    filename = 'sujechon_distmat.txt';
    
    distmat = dlmread(filename);
    m_space = metric.impl.ExplicitMetricSpace(distmat);


    stream = api.Plex4.createVietorisRipsStream(m_space,max_dimension,max_filtration_value,num_division);

    num_simplices = stream.getSize()
    persistence = api.Plex4.getModularSimplicialAlgorithm(max_dimension,2);
%     intervals = persistence.computeIntervals(stream);
    
    % save barcode generators
    dfile = 'sujechon_intervals.txt';
    if exist(dfile, 'file') ; delete(dfile); end
    diary(dfile)
    intervals = persistence.computeAnnotatedIntervals(stream)
    diary off
%     
    options.filename = 'Sujechon';
    options.max_filtration_value = max_filtration_value;
    options.max_dimension = max_dimension - 1;
    plot_barcodes(intervals,options);

    
    