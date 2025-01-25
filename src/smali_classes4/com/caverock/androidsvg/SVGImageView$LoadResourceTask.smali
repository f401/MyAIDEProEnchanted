.class Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/caverock/androidsvg/SVG;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private resourceId:I

.field private final this$0:Lcom/caverock/androidsvg/SVGImageView;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGImageView;Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    iput-object p2, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->context:Landroid/content/Context;

    iput p3, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    return-void
.end method

.method static access$0(Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;)Lcom/caverock/androidsvg/SVGImageView;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/caverock/androidsvg/SVG;
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->context:Landroid/content/Context;

    iget v1, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVG;->getFromResource(Landroid/content/Context;I)Lcom/caverock/androidsvg/SVG;
    :try_end_7
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "SVGImageView"

    const-string v2, "Error loading resource 0x%x: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->resourceId:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    check-cast v0, Lcom/caverock/androidsvg/SVG;

    goto :goto_8
.end method

.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->doInBackground([Ljava/lang/Integer;)Lcom/caverock/androidsvg/SVG;

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

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-static {v0, p1}, Lcom/caverock/androidsvg/SVGImageView;->access$S1000000(Lcom/caverock/androidsvg/SVGImageView;Lcom/caverock/androidsvg/SVG;)V

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->this$0:Lcom/caverock/androidsvg/SVGImageView;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGImageView;->doRender()V

    return-void
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/caverock/androidsvg/SVG;

    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGImageView$LoadResourceTask;->onPostExecute(Lcom/caverock/androidsvg/SVG;)V

    return-void
.end method
