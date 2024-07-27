.class public interface abstract Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment;
.super Ljava/lang/Object;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Comment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
    }
.end annotation


# virtual methods
.method public abstract getSourcePos(I)I
.end method

.method public abstract getStyle()Lcom/google/googlejavaformat/java/javac/parser/Tokens$Comment$CommentStyle;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isDeprecated()Z
.end method
