.class public Lcom/s1243808733/aide/application/activity/icons/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/icons/Icon$Highlight;,
        Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;
    }
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field public hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

.field public meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

.field name:Ljava/lang/String;

.field private svg:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/icons/Meta;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;-><init>(Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->hig:Lcom/s1243808733/aide/application/activity/icons/Icon$TextHighlight;

    .line 25
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    return-void
.end method

.method public static createDrawable(Landroid/graphics/Picture;II)Landroid/graphics/drawable/PictureDrawable;
    .registers 5

    .line 110
    new-instance v0, Landroid/graphics/drawable/PictureDrawable;

    invoke-static {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createPicture(Landroid/graphics/Picture;II)Landroid/graphics/Picture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v0
.end method

.method public static createPicture(Landroid/graphics/Picture;II)Landroid/graphics/Picture;
    .registers 7

    const/4 v3, 0x0

    .line 92
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 93
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 94
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 96
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 98
    return-object v0
.end method


# virtual methods
.method public createBitmap(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 114
    invoke-virtual {p0, p1, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(II)Landroid/graphics/Bitmap;
    .registers 4

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createDrawable(II)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable(I)Landroid/graphics/drawable/PictureDrawable;
    .registers 3

    .line 102
    invoke-virtual {p0, p1, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createDrawable(II)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createDrawable(II)Landroid/graphics/drawable/PictureDrawable;
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->svg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createDrawable(Landroid/graphics/Picture;II)Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(I)Landroid/graphics/Picture;
    .registers 3

    .line 84
    invoke-virtual {p0, p1, p1}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createPicture(II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public createPicture(II)Landroid/graphics/Picture;
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->svg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createPicture(Landroid/graphics/Picture;II)Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 41
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 43
    if-lez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-"

    const-string v4, "_"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileNameNoExtension()Ljava/lang/String;
    .registers 2

    .line 63
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/FileUtils;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->meta:Lcom/s1243808733/aide/application/activity/icons/Meta;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/Meta;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSvg()Lcom/caverock/androidsvg/SVG;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->svg:Lcom/caverock/androidsvg/SVG;

    return-object v0
.end method

.method public renderToPicture()Landroid/graphics/Picture;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->svg:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->name:Ljava/lang/String;

    return-void
.end method

.method public setSvg(Lcom/caverock/androidsvg/SVG;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/Icon;->svg:Lcom/caverock/androidsvg/SVG;

    return-void
.end method
