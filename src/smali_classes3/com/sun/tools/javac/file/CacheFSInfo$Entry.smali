.class Lcom/sun/tools/javac/file/CacheFSInfo$Entry;
.super Ljava/lang/Object;
.source "CacheFSInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/file/CacheFSInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field canonicalFile:Ljava/io/File;

.field exists:Z

.field isDirectory:Z

.field isFile:Z

.field jarClassPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/file/CacheFSInfo$1;)V
    .registers 2

    .line 117
    invoke-direct {p0}, Lcom/sun/tools/javac/file/CacheFSInfo$Entry;-><init>()V

    return-void
.end method
