function animate_strandbeest()

    close all;
    leg_params = generate_params();
    
    figure;
    hold on;
    axis equal;
    axis([-120 40 -120 60]); 
    title('Strandbeest Linkage Animation');
    xlabel('x position');
    ylabel('y position');
    grid on;
    
    leg_drawing = initialize_leg_drawing(leg_params);
    vertex_coords_guess = [
        0; 50; ...      % Vertex 1
        -50; 0; ...     % Vertex 2
        -50; 50; ...    % Vertex 3
        -100; 0; ...    % Vertex 4
        -100; -50; ...  % Vertex 5
        -50; -50; ...   % Vertex 6
        -50; -100      % Vertex 7
    ];
    
    num_rotations = 2;
    theta_steps = linspace(0, num_rotations * 2 * pi, 200); 
    
    for theta = theta_steps
        vertex_coords_root = compute_coords(vertex_coords_guess, leg_params, theta);
        
        update_leg_drawing(vertex_coords_root, leg_drawing, leg_params);
        
        vertex_coords_guess = vertex_coords_root;
        
        drawnow;
        pause(0.01);
    end
end