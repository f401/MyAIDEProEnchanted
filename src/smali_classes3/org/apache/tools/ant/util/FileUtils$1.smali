.class Lorg/apache/tools/ant/util/FileUtils$1;
.super Ljava/io/InputStream;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/util/FileUtils;->getDefaultEncoding()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/util/FileUtils;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/util/FileUtils;)V
    .registers 2

    .line 1846
    iput-object p1, p0, Lorg/apache/tools/ant/util/FileUtils$1;->this$0:Lorg/apache/tools/ant/util/FileUtils;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .line 1849
    const/4 v0, -0x1

    return v0
.end method
