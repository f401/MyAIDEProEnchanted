.class Lsun/misc/ProxyGenerator$ProxyMethod;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyMethod"
.end annotation


# instance fields
.field public exceptionTypes:[Ljava/lang/Class;

.field public fromClass:Ljava/lang/Class;

.field public methodFieldName:Ljava/lang/String;

.field public methodName:Ljava/lang/String;

.field public parameterTypes:[Ljava/lang/Class;

.field public returnType:Ljava/lang/Class;

.field final this$0:Lsun/misc/ProxyGenerator;


# direct methods
.method private constructor <init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 9

    .line 861
    iput-object p1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput-object p2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodName:Ljava/lang/String;

    .line 863
    iput-object p3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    .line 864
    iput-object p4, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    .line 865
    iput-object p5, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 866
    iput-object p6, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->fromClass:Ljava/lang/Class;

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$408(Lsun/misc/ProxyGenerator;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodFieldName:Ljava/lang/String;

    .line 868
    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Lsun/misc/ProxyGenerator$1;)V
    .registers 8

    .line 849
    invoke-direct/range {p0 .. p6}, Lsun/misc/ProxyGenerator$ProxyMethod;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lsun/misc/ProxyGenerator$ProxyMethod;)Lsun/misc/ProxyGenerator$MethodInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-direct {p0}, Lsun/misc/ProxyGenerator$ProxyMethod;->generateMethod()Lsun/misc/ProxyGenerator$MethodInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lsun/misc/ProxyGenerator$ProxyMethod;Ljava/io/DataOutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    invoke-direct {p0, p1}, Lsun/misc/ProxyGenerator$ProxyMethod;->codeFieldInitialization(Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private codeFieldInitialization(Ljava/io/DataOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->fromClass:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lsun/misc/ProxyGenerator;->access$1700(Lsun/misc/ProxyGenerator;Ljava/lang/Class;Ljava/io/DataOutputStream;)V

    .line 1096
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getString(Ljava/lang/String;)S

    move-result v1

    invoke-static {v0, v1, p1}, Lsun/misc/ProxyGenerator;->access$1800(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 1098
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    invoke-static {v0, v1, p1}, Lsun/misc/ProxyGenerator;->access$1000(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 1100
    const/16 v0, 0xbd

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1101
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v1, "java/lang/Class"

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1103
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1105
    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1107
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1, v0, p1}, Lsun/misc/ProxyGenerator;->access$1000(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 1109
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object v1, v1, v0

    .line 1111
    invoke-static {v1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->get(Ljava/lang/Class;)Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    move-result-object v1

    .line 1113
    const/16 v2, 0xb2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1114
    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v2}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v2

    iget-object v1, v1, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    const-string v3, "TYPE"

    const-string v4, "Ljava/lang/Class;"

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/ProxyGenerator$ConstantPool;->getFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1121
    :goto_1
    const/16 v1, 0x53

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lsun/misc/ProxyGenerator;->access$1700(Lsun/misc/ProxyGenerator;Ljava/lang/Class;Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 1124
    :cond_1
    const/16 v0, 0xb6

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1125
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v1, "java/lang/Class"

    const-string v2, "getMethod"

    const-string v3, "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;"

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1131
    const/16 v0, 0xb3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1132
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    .line 1133
    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$800(Lsun/misc/ProxyGenerator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodFieldName:Ljava/lang/String;

    .line 1132
    const-string v3, "Ljava/lang/reflect/Method;"

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1135
    return-void
.end method

.method private codeUnwrapReturnValue(Ljava/lang/Class;Ljava/io/DataOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0xc0

    .line 1049
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1050
    invoke-static {p1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->get(Ljava/lang/Class;)Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    move-result-object v0

    .line 1052
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1053
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v1

    iget-object v2, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1055
    const/16 v1, 0xb6

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1056
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v1

    iget-object v2, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    iget-object v3, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->unwrapMethodName:Ljava/lang/String;

    iget-object v0, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->unwrapMethodDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1060
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1066
    :cond_0
    const/16 v0, 0xac

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1084
    :goto_0
    return-void

    .line 1067
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 1068
    const/16 v0, 0xad

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 1069
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 1070
    const/16 v0, 0xae

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 1071
    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    .line 1072
    const/16 v0, 0xaf

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 1074
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1079
    :cond_5
    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1080
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1082
    const/16 v0, 0xb0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0
.end method

.method private codeWrapArgument(Ljava/lang/Class;ILjava/io/DataOutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1010
    invoke-static {p1}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->get(Ljava/lang/Class;)Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    move-result-object v0

    .line 1012
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    .line 1018
    :cond_0
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1, p2, p3}, Lsun/misc/ProxyGenerator;->access$1300(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 1029
    :goto_0
    const/16 v1, 0xb8

    invoke-virtual {p3, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1030
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v1

    iget-object v2, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperClassName:Ljava/lang/String;

    const-string v3, "valueOf"

    iget-object v0, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->wrapperValueOfDesc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1038
    :goto_1
    return-void

    .line 1019
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    .line 1020
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1, p2, p3}, Lsun/misc/ProxyGenerator;->access$1400(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    goto :goto_0

    .line 1021
    :cond_2
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_3

    .line 1022
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1, p2, p3}, Lsun/misc/ProxyGenerator;->access$1500(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    goto :goto_0

    .line 1023
    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_4

    .line 1024
    iget-object v1, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v1, p2, p3}, Lsun/misc/ProxyGenerator;->access$1600(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    goto :goto_0

    .line 1026
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1036
    :cond_5
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0, p2, p3}, Lsun/misc/ProxyGenerator;->access$700(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    goto :goto_1
.end method

.method private generateMethod()Lsun/misc/ProxyGenerator$MethodInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v11, 0xbf

    const/16 v10, 0x59

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 875
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    invoke-static {v0, v2}, Lsun/misc/ProxyGenerator;->access$500([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 876
    new-instance v4, Lsun/misc/ProxyGenerator$MethodInfo;

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    iget-object v5, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodName:Ljava/lang/String;

    const/16 v6, 0x11

    invoke-direct {v4, v2, v5, v0, v6}, Lsun/misc/ProxyGenerator$MethodInfo;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V

    .line 879
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v0, v0

    new-array v5, v0, [I

    move v0, v1

    move v2, v3

    .line 881
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 882
    aput v2, v5, v0

    .line 883
    iget-object v6, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object v6, v6, v0

    invoke-static {v6}, Lsun/misc/ProxyGenerator;->access$600(Ljava/lang/Class;)I

    move-result v6

    add-int/2addr v2, v6

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_0
    new-instance v6, Ljava/io/DataOutputStream;

    iget-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 890
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0, v1, v6}, Lsun/misc/ProxyGenerator;->access$700(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 892
    const/16 v0, 0xb4

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 893
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v7, "java/lang/reflect/Proxy"

    const-string v8, "h"

    const-string v9, "Ljava/lang/reflect/InvocationHandler;"

    invoke-virtual {v0, v7, v8, v9}, Lsun/misc/ProxyGenerator$ConstantPool;->getFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 897
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0, v1, v6}, Lsun/misc/ProxyGenerator;->access$700(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 899
    const/16 v0, 0xb2

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 900
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v7, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    .line 901
    invoke-static {v7}, Lsun/misc/ProxyGenerator;->access$800(Lsun/misc/ProxyGenerator;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodFieldName:Ljava/lang/String;

    .line 900
    const-string v9, "Ljava/lang/reflect/Method;"

    invoke-virtual {v0, v7, v8, v9}, Lsun/misc/ProxyGenerator$ConstantPool;->getFieldRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 904
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v7, v0

    if-lez v7, :cond_1

    .line 906
    iget-object v3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    array-length v0, v0

    invoke-static {v3, v0, v6}, Lsun/misc/ProxyGenerator;->access$1000(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 908
    const/16 v0, 0xbd

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 909
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v3, "java/lang/Object"

    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v0, v1

    .line 911
    :goto_1
    iget-object v3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 913
    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 915
    iget-object v3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v3, v0, v6}, Lsun/misc/ProxyGenerator;->access$1000(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 917
    iget-object v3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    aget-object v3, v3, v0

    aget v7, v5, v0

    invoke-direct {p0, v3, v7, v6}, Lsun/misc/ProxyGenerator$ProxyMethod;->codeWrapArgument(Ljava/lang/Class;ILjava/io/DataOutputStream;)V

    .line 919
    const/16 v3, 0x53

    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    :cond_1
    invoke-virtual {v6, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 926
    :cond_2
    const/16 v0, 0xb9

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 927
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v3, "java/lang/reflect/InvocationHandler"

    const-string v5, "invoke"

    const-string v7, "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-virtual {v0, v3, v5, v7}, Lsun/misc/ProxyGenerator$ConstantPool;->getInterfaceMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 932
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 933
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 935
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 937
    const/16 v0, 0x57

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 939
    const/16 v0, 0xb1

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 946
    :goto_2
    iget-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-short v3, v0

    .line 948
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$1100([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 949
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 951
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 952
    iget-object v7, v4, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    iget-object v8, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    .line 954
    new-instance v9, Lsun/misc/ProxyGenerator$ExceptionTableEntry;

    invoke-static {v8}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-direct {v9, v1, v3, v3, v0}, Lsun/misc/ProxyGenerator$ExceptionTableEntry;-><init>(SSSS)V

    .line 952
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 943
    :cond_3
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    invoke-direct {p0, v0, v6}, Lsun/misc/ProxyGenerator$ProxyMethod;->codeUnwrapReturnValue(Ljava/lang/Class;Ljava/io/DataOutputStream;)V

    goto :goto_2

    .line 957
    :cond_4
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 959
    iget-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-short v0, v0

    .line 961
    iget-object v5, v4, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    iget-object v7, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    .line 962
    new-instance v8, Lsun/misc/ProxyGenerator$ExceptionTableEntry;

    invoke-static {v7}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v7

    const-string v9, "java/lang/Throwable"

    invoke-virtual {v7, v9}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v7

    invoke-direct {v8, v1, v3, v0, v7}, Lsun/misc/ProxyGenerator$ExceptionTableEntry;-><init>(SSSS)V

    .line 961
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0, v2, v6}, Lsun/misc/ProxyGenerator;->access$1200(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 966
    const/16 v0, 0xbb

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 967
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v3, "java/lang/reflect/UndeclaredThrowableException"

    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 970
    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 972
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0, v2, v6}, Lsun/misc/ProxyGenerator;->access$700(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V

    .line 974
    const/16 v0, 0xb7

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 976
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v3, "java/lang/reflect/UndeclaredThrowableException"

    const-string v5, "<init>"

    const-string v7, "(Ljava/lang/Throwable;)V"

    invoke-virtual {v0, v3, v5, v7}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 980
    invoke-virtual {v6, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 949
    :cond_5
    iget-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const v3, 0xffff

    if-gt v0, v3, :cond_6

    .line 987
    const/16 v0, 0xa

    iput-short v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->maxStack:S

    .line 988
    add-int/lit8 v0, v2, 0x1

    int-to-short v0, v0

    iput-short v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->maxLocals:S

    .line 989
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [S

    iput-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    .line 990
    :goto_4
    iget-object v0, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 991
    iget-object v0, v4, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    iget-object v2, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v2}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v2

    iget-object v3, p0, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    aget-object v3, v3, v1

    .line 992
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsun/misc/ProxyGenerator;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 991
    invoke-virtual {v2, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v2

    aput-short v2, v0, v1

    .line 990
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 984
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_7
    return-object v4
.end method
