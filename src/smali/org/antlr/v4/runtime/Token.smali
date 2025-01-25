.class public interface abstract Lorg/antlr/v4/runtime/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field public static final DEFAULT_CHANNEL:I = 0x0

.field public static final EOF:I = -0x1

.field public static final EPSILON:I = -0x2

.field public static final HIDDEN_CHANNEL:I = 0x1

.field public static final INVALID_TYPE:I = 0x0

.field public static final MIN_USER_CHANNEL_VALUE:I = 0x2

.field public static final MIN_USER_TOKEN_TYPE:I = 0x1


# virtual methods
.method public abstract getChannel()I
.end method

.method public abstract getCharPositionInLine()I
.end method

.method public abstract getInputStream()Lorg/antlr/v4/runtime/CharStream;
.end method

.method public abstract getLine()I
.end method

.method public abstract getStartIndex()I
.end method

.method public abstract getStopIndex()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTokenIndex()I
.end method

.method public abstract getTokenSource()Lorg/antlr/v4/runtime/TokenSource;
.end method

.method public abstract getType()I
.end method
