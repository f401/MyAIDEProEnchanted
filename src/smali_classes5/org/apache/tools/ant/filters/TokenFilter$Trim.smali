.class public Lorg/apache/tools/ant/filters/TokenFilter$Trim;
.super Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trim"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 574
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/TokenFilter$ChainableReaderFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
