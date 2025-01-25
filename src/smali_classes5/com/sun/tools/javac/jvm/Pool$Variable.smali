.class Lcom/sun/tools/javac/jvm/Pool$Variable;
.super Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variable"
.end annotation


# instance fields
.field v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 2

    .line 167
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 168
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 169
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 172
    instance-of v1, p1, Lcom/sun/tools/javac/jvm/Pool$Variable;

    if-nez v1, :cond_6

    .line 174
    :cond_5
    :goto_5
    return v0

    .line 173
    :cond_6
    check-cast p1, Lcom/sun/tools/javac/jvm/Pool$Variable;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 174
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, v3, :cond_5

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 177
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 184
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->hashCode()I

    move-result v2

    .line 181
    mul-int/lit8 v0, v0, 0x21

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method
