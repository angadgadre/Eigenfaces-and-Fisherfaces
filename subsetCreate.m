function [train_dataN3, validation_dataN3, ...
train_dataN5, validation_dataN5,...
train_dataN7, validation_dataN7] = subsetCreate(allSubject)

train_dataN3 = [];
train_dataN5 = [];
train_dataN7 = [];
validation_dataN3 = [];
validation_dataN5 = [];
validation_dataN7 = [];

t = randperm(11);
train3 = t(1:3); train3 = sort(train3);

train5 = t(1:5); train5 = sort(train5);

train7 = t(1:7); train7 = sort(train7);


sub1 = allSubject(1:11,:);
sub2 = allSubject(12:22,:);
sub3 = allSubject(23:33,:);
sub4 = allSubject(34:44,:);
sub5 = allSubject(45:55,:);
sub6 = allSubject(56:66,:);
sub7 = allSubject(67:77,:);
sub8 = allSubject(78:88,:);
sub9 = allSubject(89:99,:);
sub10 = allSubject(100:110,:);
sub11 = allSubject(111:121,:);
sub12 = allSubject(122:132,:);
sub13 = allSubject(133:143,:);
sub14 = allSubject(144:154,:);
sub15 = allSubject(155:165,:);

%for j = 1:15
	for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub1(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub1(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub1(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub1(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub1(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub1(i,:)];
        end
    end
    
    
	for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub2(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub2(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub2(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub2(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub2(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub2(i,:)];
        end
    end

for i = 1:11
	if ismember(i,train3)
           train_dataN3 = [train_dataN3; sub3(i,:)];
    else
           validation_dataN3 = [validation_dataN3; sub3(i,:)];
    end
    if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub3(i,:)];
    else
            validation_dataN5 = [validation_dataN5; sub3(i,:)];
    end
    if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub3(i,:)];
    else
            validation_dataN7 = [validation_dataN7; sub3(i,:)];
    end
end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub4(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub4(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub4(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub4(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub4(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub4(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub5(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub5(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub5(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub5(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub5(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub5(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub6(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub6(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub6(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub6(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub6(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub6(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub7(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub7(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub7(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub7(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub7(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub7(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub8(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub8(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub8(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub8(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub8(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub8(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub9(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub9(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub9(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub9(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub9(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub9(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub10(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub10(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub10(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub10(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub10(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub10(i,:)];
        end
    end

    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub11(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub11(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub11(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub11(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub11(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub11(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub12(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub12(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub12(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub12(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub12(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub12(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub13(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub13(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub13(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub13(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub13(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub13(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub14(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub14(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub14(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub14(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub14(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub14(i,:)];
        end
    end
    
    for i = 1:11
		if ismember(i,train3)
            train_dataN3 = [train_dataN3; sub15(i,:)];
        else
            validation_dataN3 = [validation_dataN3; sub15(i,:)];
        end
        if ismember(i,train5)
            train_dataN5 = [train_dataN5; sub15(i,:)];
        else
            validation_dataN5 = [validation_dataN5; sub15(i,:)];
        end
        if ismember(i,train7)
            train_dataN7 = [train_dataN7; sub15(i,:)];
        else
            validation_dataN7 = [validation_dataN7; sub15(i,:)];
        end
    end
    
% fprintf('\n In subsetCreate sizes of sets\n');
% size(train_dataN3)
% size(validation_dataN3)
% size(train_dataN5)
% size(validation_dataN5)
% size(train_dataN7)
% size(validation_dataN7)

% scale data to 0 and 1
train_dataN3 = train_dataN3 / 255;
train_dataN5 = train_dataN5 / 255;
train_dataN7 = train_dataN7 / 255;
validation_dataN3 = validation_dataN3 / 255;
validation_dataN5 = validation_dataN5 / 255;
validation_dataN7 = validation_dataN7 / 255;
end

