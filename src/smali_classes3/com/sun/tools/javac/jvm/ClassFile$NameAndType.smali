.class public Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;
.super Ljava/lang/Object;
.source "ClassFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameAndType"
.end annotation


# instance fields
.field name:Lcom/sun/tools/javac/util/Name;

.field type:Lcom/sun/tools/javac/code/Type;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;)V
    .registers 3

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    .line 171
    iput-object p2, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 175
    instance-of v0, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    check-cast p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    .line 178
    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
