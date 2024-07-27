.class Lcom/sun/tools/javac/jvm/Pool$Method;
.super Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Method"
.end annotation


# instance fields
.field m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 2

    .line 142
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Symbol$DelegatedSymbol;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 143
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 144
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    .line 147
    instance-of v1, p1, Lcom/sun/tools/javac/jvm/Pool$Method;

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    check-cast p1, Lcom/sun/tools/javac/jvm/Pool$Method;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 149
    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 152
    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 159
    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->hashCode()I

    move-result v2

    .line 156
    mul-int/lit8 v0, v0, 0x21

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method
