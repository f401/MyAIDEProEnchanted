.class public final Lcom/s1243808733/android/dx/command/dump/ClassDumper;
.super Lcom/s1243808733/android/dx/command/dump/BaseDumper;
.source "ClassDumper.java"


# direct methods
.method private constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 5

    .line 41
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/ClassDumper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 43
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->dump()V

    return-void
.end method


# virtual methods
.method public dump()V
    .registers 6

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->getBytes()[B

    move-result-object v0

    .line 60
    new-instance v1, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    .line 61
    nop

    .line 62
    new-instance v2, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->getStrictParse()Z

    move-result v4

    invoke-direct {v2, v1, v3, v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 64
    sget-object v3, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 65
    invoke-virtual {v2, p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 66
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 68
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->getReadBytes()I

    move-result v2

    .line 69
    array-length v3, v0

    if-eq v2, v3, :cond_30

    .line 70
    array-length v0, v0

    sub-int/2addr v0, v2

    const-string v3, "<extra data at end of file>"

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/s1243808733/android/dx/command/dump/ClassDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_30
    return-void
.end method
