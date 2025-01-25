.class public Lcom/s1243808733/util/ItemText;
.super Ljava/lang/Object;
.source "ItemText.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private key:Ljava/lang/String;

.field private final source:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/s1243808733/util/ItemText;->source:Ljava/lang/CharSequence;

    .line 11
    iput-object p1, p0, Lcom/s1243808733/util/ItemText;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/s1243808733/util/ItemText;->source:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/s1243808733/util/ItemText;->key:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/s1243808733/util/ItemText;->source:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/s1243808733/util/ItemText;->key:Ljava/lang/String;

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/s1243808733/util/ItemText;->source:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/s1243808733/util/ItemText;->source:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
