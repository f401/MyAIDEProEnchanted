.class public Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;
.super Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;
.source "DoubleCPInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;-><init>(II)V

    .line 34
    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;->setValue(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Double Constant Pool Entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
