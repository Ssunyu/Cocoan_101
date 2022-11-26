seeds_rand = wgdata.seeds;
%% LAPTOP1 - Resting & Word Generation ====================================
%   fast_fmri_resting(0.01,'test');       % practice resting
    fast_fmri_word_generation('' ,'practice');   % recording test
    
    %% first time
    fast_fmri_resting(6,'biopac','eye');       % 6 min resting
%   fast_fmri_resting(0.2,'biopac');       % 6 min resting

        %% WORD GENERATION + 2m RESTING
        fast_fmri_word_generation(seeds_rand,'biopac','eye');
%       fast_fmri_word_generation(seeds_rand,'eye');
        
        %% THINKING AND RATING
        [ts, isi_iti] = fast_fmri_generate_ts;
        fast_fmri_task_main(ts, isi_iti,'biopac','eye');
%         fast_fmri_task_main(ts, isi_iti);
        
        
        
%% LAPTOP2 - Transcribe ===================================================
    fast_fmri_transcribe_responses('nosound') % while running fast_fmri_word_generation
    
    %%     
    fast_fmri_transcribe_responses('only_na') % after running fast_fmri_word_generation
    
    %%
    fast_fmri_transcribe_responses('response_n', [8]) % playing sound only a few specific trials
    
            %% if you want to revise already written items.
            savedir = fullfile(pwd, 'data');            
            SID = sprintf('F087');
            SessID = input('Session number? ', 's');  
            save(fullfile(savedir, ['b_responsedata_sub' SID '_sess' SessID '.mat']),'response');

            %%             
            N = input('������ ��?    ','s');
            content = input('������ ����?    ','s');
            dat_file = fullfile(savedir, ['b_responsedata_sub' SID '_sess' SessID '.mat']);          
            load(dat_file);
            response{str2double(N),1} = content;            
            save(fullfile(savedir, ['b_responsedata_sub' SID '_sess' SessID '.mat']),'response');
            
%             save(fullfile(savedir, ['d_surveydata_subF073.mat']),'survey');

            
%% SURVEY 
    words = fast_fmri_wholewords;           % subjectID = F010

    fast_fmri_survey(words);


    
    
    
    
    
      
   

%% RUN ONCE for the experiment
rng('shuffle');
seeds = {'�д�', '�ſ�', '����','����'};
seeds_rand = seeds(randperm(numel(seeds))) 
% seeds_rand = {'����','����','�д�','�ſ�'};   

%% SEEDWORDS for 2ND PARTICIPATION
i = 21;



seeds_rand  = {'ȯ��'    '����'    '����'    '���'; %1
    '���'    '����'    'ȯ��'    '����'; 
    '���'    'ȯ��'    '����'    '����';
    'ȯ��'    '����'    '����'    '���';
    '����'    '����'    'ȯ��'    '���';
    '����'    '���'    'ȯ��'    '����'; % F058
    '���'    '����'    'ȯ��'    '����'; % F059
    'ȯ��'    '����'    '���'    '����'; % F061
    '���'    '����'    '����'    'ȯ��'; % F067
    '����'    'ȯ��'    '���'    '����'; % 69
    'ȯ��'    '���'    '����'    '����'; % 70
    'ȯ��'    '���'    '����'    '����'; % 74
    '����'    '����'    '���'    'ȯ��'; % 76
    'ȯ��'    '����'    '���'    '����'; % 78
    '����'    '����'    'ȯ��'    '���'; % 79
    '���'    '����'    '����'    'ȯ��'; % 80
    '����'    '���'    'ȯ��'    '����'; % 81
    '����'    'ȯ��'    '���'    '����'; % 84
    '����'    '���'    '����'    'ȯ��'; % 85
    '����'    'ȯ��'    '����'    '���'; % 86
    '���'    'ȯ��'    '����'    '����'; % 87
    'ȯ��'    '����'    '����'    '���';
    '����'    '���'    '����'    'ȯ��';
    '����'    '����'    '���'    'ȯ��';
    '���'    '����'    'ȯ��'    '����';
    'ȯ��'    '����'    '���'    '����';
    '����'    '����'    '���'    'ȯ��';
    'ȯ��'    '����'    '���'    '����';
    '���'    'ȯ��'    '����'    '����';
    '����'    '����'    'ȯ��'    '���';
    '����'    'ȯ��'    '����'    '���';
    '����'    '����'    'ȯ��'    '���';
    '����'    'ȯ��'    '���'    '����';
    'ȯ��'    '���'    '����'    '����';
    '����'    '����'    '���'    'ȯ��'; 
    '���'    '����'    '����'    'ȯ��'}; % 35
seeds_rand = seeds_rand(i,:)