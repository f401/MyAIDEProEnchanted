.class Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;
.super Lzeroaicy/org/objectweb/asm/ClassVisitor;
.source "ClassInfoTest3.java"


# direct methods
.method constructor <init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lzeroaicy/org/objectweb/asm/ClassVisitor;-><init>(ILzeroaicy/org/objectweb/asm/ClassVisitor;)V

    return-void
.end method

.method static synthetic access$Lzeroaicy$org$objectweb$asm$ClassVisitor$2(Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;)Lzeroaicy/org/objectweb/asm/ClassVisitor;
    .registers 2

    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    return-object v0
.end method

.method static synthetic access$Szeroaicy$org$objectweb$asm$ClassVisitor$2(Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;Lzeroaicy/org/objectweb/asm/ClassVisitor;)V
    .registers 2

    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    return-void
.end method


# virtual methods
.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;
    .registers 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 62
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/ClassVisitor;->cv:Lzeroaicy/org/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lzeroaicy/org/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lzeroaicy/org/objectweb/asm/MethodVisitor;

    move-result-object v0

    .line 63
    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;

    const/high16 v2, 0x80000

    invoke-direct {v1, p0, v2, v0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;-><init>(Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;ILzeroaicy/org/objectweb/asm/MethodVisitor;)V

    return-object v1
.end method
