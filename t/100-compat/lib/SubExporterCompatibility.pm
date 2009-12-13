package SubExporterCompatibility; {
    
    use MouseX::Types::Mouse qw(Str);
    use MouseX::Types -declare => [qw(MyStr)];
    use Sub::Exporter -setup => { exports => [ qw(something MyStr) ] };
    
    subtype MyStr,
     as Str;
     
    sub something {
        return 1;
    }    
    
} 1;
