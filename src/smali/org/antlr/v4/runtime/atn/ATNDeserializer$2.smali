.class final Lorg/antlr/v4/runtime/atn/ATNDeserializer$2;
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
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readUnicode([CI)I
    .locals 1

    .line 113
    invoke-static {p1, p2}, Lorg/antlr/v4/runtime/atn/ATNDeserializer;->toInt32([CI)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
