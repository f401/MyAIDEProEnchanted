.class Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;
.super Lzeroaicy/org/objectweb/asm/MethodVisitor;
.source "ClassInfoTest3.java"


# instance fields
.field private final this$0:Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;


# direct methods
.method constructor <init>(Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;ILzeroaicy/org/objectweb/asm/MethodVisitor;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lzeroaicy/org/objectweb/asm/MethodVisitor;-><init>(ILzeroaicy/org/objectweb/asm/MethodVisitor;)V

    iput-object p1, p0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;->this$0:Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;)Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;
    .registers 1

    iget-object p0, p0, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001$100000000;->this$0:Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3$100000001;

    return-object p0
.end method


# virtual methods
.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 73
    const-string v0, "com.aide.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 77
    :cond_c
    invoke-super {p0, p1}, Lzeroaicy/org/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method
