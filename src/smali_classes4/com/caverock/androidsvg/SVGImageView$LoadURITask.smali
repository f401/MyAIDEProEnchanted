.class Lcom/caverock/androidsvg/SVGImageView$LoadURITask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadURITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Integer;",
        "Lcom/caverock/androidsvg/SVG;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGImageView;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGImageView$LoadURITask;)Lcom/caverock/androidsvg/SVGImageView;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    :try_end_6
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_6} :catch_e
    .catchall {:try_start_1 .. :try_end_6} :catchall_35

    move-result-object v0

    const/4 v1, 0x0

    :try_start_8
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_41
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_35

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    :try_start_f
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SVGImageView"

    const-string v3, "Parse error loading URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_35

    const/4 v0, 0x0

    :try_start_2c
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_3d

    :goto_31
    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG;

    goto :goto_d

    :catchall_35
    move-exception v0

    const/4 v1, 0x0

    :try_start_37
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_3f

    :goto_3c
    throw v0

    :catch_3d
    move-exception v0

    goto :goto_31

    :catch_3f
    move-exception v1

    goto :goto_3c

    :catch_41
    move-exception v1

    goto :goto_d
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->doInBackground([Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/caverock/androidsvg/SVG;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVGImageView;->access$S1000000(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVG;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGImageView;->doRender()V

    return-void
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadURITask;->onPostExecute(Lcom/caverock/androidsvg/SVG;)V

    return-void
.end method
