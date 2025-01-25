.class public interface abstract Lcom/google/googlejavaformat/Input$Token;
.super Ljava/lang/Object;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Token"
.end annotation


# virtual methods
.method public abstract getTok()Lcom/google/googlejavaformat/Input$Tok;
.end method

.method public abstract getToksAfter()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getToksBefore()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<+",
            "Lcom/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation
.end method
