.class final Lorg/antlr/v4/runtime/atn/ATNDeserializer$1;
.super Ljava/lang/Object;
.source "ATNDeserializer.java"

# interfaces
.implements Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/antlr/v4/runtime/atn/ATNDeserializer;->getUnicodeDeserializer(Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializingMode;)Lorg/antlr/v4/runtime/atn/ATNDeserializer$UnicodeDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readUnicode([CI)I
    .registers 3

    .line 100
    aget-char p1, p1, p2

    invoke-static {p1}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt(C)I

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
