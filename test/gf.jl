


@testset "test minlp gf" begin
    @testset "gaslib 40 case" begin
#        result = run_gf("../test/data/gaslib-40.json", MINLPGasModel, minlp_solver)
        
 #       @test result["status"] == :LocalOptimal || result["status"] == :Optimal
  #      @test isapprox(result["objective"], 0; atol = 1e-6)
    end
    @testset "gaslib 135 case" begin
#        result = run_gf("../test/data/gaslib-135.json", MINLPGasModel, minlp_solver)
        
 #       @test result["status"] == :LocalOptimal || result["status"] == :Optimal
  #      @test isapprox(result["objective"], 0; atol = 1e-6)
    end    
    @testset "gaslib 582 case" begin
        result = run_gf("../test/data/gaslib-582.json", MINLPGasModel, minlp_solver)
        
        @test result["status"] == :LocalOptimal || result["status"] == :Optimal
        @test isapprox(result["objective"], 0; atol = 1e-6)
    end
    
end


@testset "test misocp gf" begin
    @testset "gaslib 40 case" begin
        result = run_gf("../test/data/gaslib-40.json", MISOCPGasModel, misocp_solver)

        @test result["status"] == :LocalOptimal || result["status"] == :Optimal
        @test isapprox(result["objective"], 0; atol = 1e-6)
    end
    @testset "gaslib 135 case" begin
        result = run_gf("../test/data/gaslib-135.json", MISOCPGasModel, misocp_solver)

        @test result["status"] == :LocalOptimal || result["status"] == :Optimal
        @test isapprox(result["objective"], 0; atol = 1e-6)
    end
    @testset "gaslib 582 case" begin
        result = run_gf("../test/data/gaslib-582.json", MISOCPGasModel, misocp_solver)

        @test result["status"] == :LocalOptimal || result["status"] == :Optimal
        @test isapprox(result["objective"], 0; atol = 1e-6)
    end
    
end




