.class public abstract Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AttributeReader"
.end annotation


# instance fields
.field final kinds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;"
        }
    .end annotation
.end field

.field final name:Lcom/sun/tools/javac/util/Name;

.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;

.field final version:Lcom/sun/tools/javac/jvm/ClassFile$Version;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/jvm/ClassFile$Version;",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;",
            ">;)V"
        }
    .end annotation

    .line 969
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->name:Lcom/sun/tools/javac/util/Name;

    .line 971
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    .line 972
    iput-object p4, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->kinds:Ljava/util/Set;

    .line 973
    return-void
.end method


# virtual methods
.method accepts(Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)Z
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 976
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->kinds:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 977
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v3, v3, Lcom/sun/tools/javac/jvm/ClassFile$Version;->major:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v3, v3, Lcom/sun/tools/javac/jvm/ClassFile$Version;->major:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v3, v3, Lcom/sun/tools/javac/jvm/ClassFile$Version;->minor:I

    if-lt v2, v3, :cond_1

    .line 991
    :cond_0
    :goto_0
    return v0

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->lintClassfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->name:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/ClassReader;->currentClassFile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v2

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    sget-object v4, Lcom/sun/tools/javac/code/Lint$LintCategory;->CLASSFILE:Lcom/sun/tools/javac/code/Lint$LintCategory;

    const/4 v0, 0x0

    check-cast v0, Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v6, v6, Lcom/sun/tools/javac/jvm/ClassFile$Version;->major:I

    .line 984
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->version:Lcom/sun/tools/javac/jvm/ClassFile$Version;

    iget v7, v7, Lcom/sun/tools/javac/jvm/ClassFile$Version;->minor:I

    iget-object v8, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v8, v8, Lcom/sun/tools/javac/jvm/ClassReader;->majorVersion:I

    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v9, v9, Lcom/sun/tools/javac/jvm/ClassReader;->minorVersion:I

    .line 983
    const-string v10, "future.attr"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    const/4 v5, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    invoke-virtual {v3, v4, v0, v10, v11}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/code/Lint$LintCategory;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 987
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->warnedAttrs:Ljava/util/Set;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->name:Lcom/sun/tools/javac/util/Name;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    move v0, v1

    .line 991
    goto :goto_0

    .line 986
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/ClassReader;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 987
    throw v0
.end method

.method abstract read(Lcom/sun/tools/javac/code/Symbol;I)V
.end method
