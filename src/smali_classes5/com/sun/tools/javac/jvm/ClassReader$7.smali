.class Lcom/sun/tools/javac/jvm/ClassReader$7;
.super Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/ClassReader;->initAttributeReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .registers 5

    .line 1056
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 11

    .line 1058
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1059
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v0, :cond_5b

    .line 1069
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    .line 1070
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_5b

    .line 1071
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    .line 1072
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 1073
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v4}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    .line 1074
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    .line 1075
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v5}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v5

    .line 1076
    if-nez v3, :cond_58

    .line 1078
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    array-length v3, v3

    if-lt v5, v3, :cond_4d

    .line 1079
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x8

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1080
    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v7, v6, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    .line 1081
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v6, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    .line 1083
    :cond_4d
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->parameterNameIndices:[I

    aput v4, v3, v5

    .line 1084
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/tools/javac/jvm/ClassReader;->haveParameterNameIndices:Z

    .line 1070
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1088
    :cond_5b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$7;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    add-int/2addr v1, p2

    iput v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1089
    return-void
.end method
