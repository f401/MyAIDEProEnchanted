.class public Lcom/s1243808733/util/CharSequenceWrapper;
.super Ljava/lang/Object;
.source "CharSequenceWrapper.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field protected source:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/s1243808733/util/CharSequenceWrapper;->source:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/s1243808733/util/CharSequenceWrapper;->source:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/s1243808733/util/CharSequenceWrapper;->source:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/s1243808733/util/CharSequenceWrapper;->source:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/s1243808733/util/CharSequenceWrapper;->source:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
