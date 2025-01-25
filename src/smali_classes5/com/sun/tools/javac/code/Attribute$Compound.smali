.class public Lcom/sun/tools/javac/code/Attribute$Compound;
.super Lcom/sun/tools/javac/code/Attribute;
.source "Attribute.java"

# interfaces
.implements Ljavax/lang/model/element/AnnotationMirror;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field public final values:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/util/Pair",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;>;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Attribute;-><init>(Lcom/sun/tools/javac/code/Type;)V

    .line 158
    iput-object p2, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    .line 159
    return-void
.end method


# virtual methods
.method public accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/lang/model/element/AnnotationValueVisitor",
            "<TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 205
    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/AnnotationValueVisitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V
    .registers 2

    .line 160
    invoke-interface {p1, p0}, Lcom/sun/tools/javac/code/Attribute$Visitor;->visitCompound(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    return-void
.end method

.method public getAnnotationType()Ljavax/lang/model/type/DeclaredType;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    return-object v0
.end method

.method public getElementValues()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/code/Attribute;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 216
    iget-object v3, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 217
    :cond_1f
    return-object v1
.end method

.method public getValue()Lcom/sun/tools/javac/code/Attribute$Compound;
    .registers 1

    .line 201
    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Attribute$Compound;->getValue()Lcom/sun/tools/javac/code/Attribute$Compound;

    move-result-object v0

    return-object v0
.end method

.method public member(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Attribute;
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 196
    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-ne v1, p1, :cond_6

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    .line 197
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const/4 v2, 0x1

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string v0, "@"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v5

    .line 175
    if-lez v5, :cond_5c

    .line 176
    const/16 v0, 0x28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v0, p0, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    .line 179
    if-nez v1, :cond_37

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_37
    const/4 v3, 0x0

    .line 182
    iget-object v1, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 183
    if-gt v5, v2, :cond_48

    iget-object v7, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v7, v7, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v7, v7, Lcom/sun/tools/javac/util/Names;->value:Lcom/sun/tools/javac/util/Name;

    if-eq v1, v7, :cond_50

    .line 184
    :cond_48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 185
    const/16 v1, 0x3d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_50
    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 188
    goto :goto_24

    .line 189
    :cond_57
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
