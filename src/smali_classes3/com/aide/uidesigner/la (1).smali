.class public Lcom/aide/uidesigner/la;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/io/File;
    .annotation runtime Labcd/ru;
        field = 0xfe8c022685c828L
    .end annotation
.end field

.field private Hw:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = -0x201aea858b7a8629L
    .end annotation
.end field

.field private VH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x171400404981db10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x35f98cb4a55da348L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x3c7db978e853e10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/la;

    const-wide v1, -0x207d784f0aa8ce4cL  # -1.213121434653206E152

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x423d67ef3fccd778L  # 1.2629778426884167E11

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/uidesigner/la;->Hw:Landroid/content/Context;

    if-nez p2, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1a
    iput-object v1, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x423d67ef3fccd778L  # 1.2629778426884167E11

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private DW(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x43cfba1f1de4f4acL
    .end annotation

    const-wide v0, 0x1dcd41e27174754fL  # 3.969241714980132E-165

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    :cond_c
    const/4 v2, 0x0

    if-eqz p1, :cond_21

    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_21

    :cond_16
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Landroid/graphics/drawable/NinePatchDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_20
    .catchall {:try_start_f .. :try_end_1f} :catchall_22

    return-object p1

    :catch_20
    move-exception p1

    :cond_21
    :goto_21
    return-object v2

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x111811bb92845e30L
    .end annotation

    const-wide v0, -0x37c2d2ec9bcafL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_1c

    const-string v2, "?attr/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_1c
    if-eqz p1, :cond_2c

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    if-eqz v2, :cond_63

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_31
    if-ltz v3, :cond_63

    iget-object v4, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_64

    return-object v2

    :cond_60
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    :cond_63
    return-object p1

    :catchall_64
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v2

    :goto_6e
    goto :goto_6d
.end method

.method private j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14dab7e23a225ae5L
    .end annotation

    const-wide v0, 0x2183f152a18e1004L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_62

    :cond_c
    const/4 v2, 0x0

    if-eqz p1, :cond_61

    :try_start_f
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_61

    :cond_16
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_2d
    div-int/lit8 v6, v5, 0x2

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_59

    div-int/lit8 v6, v3, 0x2

    if-ge v6, v7, :cond_59

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    if-nez v3, :cond_4d

    return-object v2

    :cond_4d
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/aide/uidesigner/la;->Hw:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4

    :cond_59
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v3, v3, 0x2
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5d} :catch_60
    .catchall {:try_start_f .. :try_end_5d} :catchall_62

    mul-int/lit8 v4, v4, 0x2

    goto :goto_2d

    :catch_60
    move-exception p1

    :cond_61
    :goto_61
    return-object v2

    :catchall_62
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_6a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw v2

    :goto_6c
    goto :goto_6b
.end method

.method private j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;Ljava/util/Set;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x28cd1630eadc2cc0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/uidesigner/N$a;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4012dbfbcdae437L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return-object v1

    :cond_18
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_1d
    if-ltz v0, :cond_58

    iget-object v2, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_55

    iget-object v1, p2, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3e

    return-object v1

    :cond_3e
    iget-object v1, p0, Lcom/aide/uidesigner/la;->Zo:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_59

    return-object p1

    :cond_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_58
    return-object v1

    :catchall_59
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_6b

    const-wide v2, 0x4012dbfbcdae437L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v0

    :goto_6d
    goto :goto_6c
.end method

.method private j6(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2f6de1755b91fe53L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2ede9a66b7cb9eb8L  # 6.301254933151501E-83

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    :cond_14
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_19
    if-ltz v0, :cond_3d

    iget-object v1, p0, Lcom/aide/uidesigner/la;->Zo:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    invoke-direct {p0, v1, p2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_3d
    const-string v0, "android:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@android:style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_6f

    return-object p1

    :catchall_6f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x2ede9a66b7cb9eb8L  # 6.301254933151501E-83

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method private j6(ILjava/io/File;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18f60fddaaa3ec00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x467d37e45e8c371bL  # -1.1575098803367314E-31

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_60

    :cond_11
    :try_start_11
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_5e

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_5f

    aget-object v2, p2, v1

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-direct {p0, v2, p1}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;I)V

    const-string v3, "string"

    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "color"

    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "dimen"

    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "bool"

    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V

    const-string v3, "integer"

    invoke-direct {p0, v2, p1, v3}, Lcom/aide/uidesigner/la;->j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_5e

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catchall_5e
    move-exception p1

    :cond_5f
    return-void

    :catchall_60
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x467d37e45e8c371bL  # -1.1575098803367314E-31

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method private j6(Lorg/w3c/dom/Document;I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1b1242fe221035b7L
    .end annotation

    const-string v0, "name"

    :try_start_2
    sget-boolean v1, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1d310c6ebff9e62cL  # -9.125746330153902E167

    invoke-static {v2, v3, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    const-string v1, "style"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_bf

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    instance-of v6, v5, Lorg/w3c/dom/Attr;

    if-eqz v6, :cond_bb

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_61

    :cond_4a
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    const-string v7, "parent"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    instance-of v7, v6, Lorg/w3c/dom/Attr;

    if-eqz v7, :cond_5f

    check-cast v6, Lorg/w3c/dom/Attr;

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6
    :try_end_5e
    .catchall {:try_start_2 .. :try_end_5e} :catchall_c0

    goto :goto_61

    :cond_5f
    const-string v6, ""

    :goto_61
    :try_start_61
    iget-object v7, p0, Lcom/aide/uidesigner/la;->Zo:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/SortedMap;

    invoke-interface {v7, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_89
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_bb

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    instance-of v9, v8, Lorg/w3c/dom/Attr;

    if-eqz v9, :cond_b8

    check-cast v8, Lorg/w3c/dom/Attr;

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catchall {:try_start_61 .. :try_end_b8} :catchall_c0

    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_bb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    :cond_bf
    return-void

    :catchall_c0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_d5

    const-wide v2, -0x1d310c6ebff9e62cL  # -9.125746330153902E167

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d5
    goto :goto_d7

    :goto_d6
    throw v0

    :goto_d7
    goto :goto_d6
.end method

.method private j6(Lorg/w3c/dom/Document;ILjava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1278ebcd6f7e7605L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2477231c00e607b8L  # -8.823869652157745E132

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-interface {p1, p3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_19
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_66

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Attr;

    if-eqz v4, :cond_63

    check-cast v3, Lorg/w3c/dom/Attr;

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/uidesigner/la;->VH:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_67

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_66
    return-void

    :catchall_67
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_7d

    const-wide v2, -0x2477231c00e607b8L  # -8.823869652157745E132

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v0

    :goto_7f
    goto :goto_7e
.end method

.method private v5()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x12b0d88b07d6813dL
    .end annotation

    const-wide v0, 0x31015db944455638L  # 1.2286086145643828E-72

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/la;->Hw:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_37

    const/16 v1, 0x78

    if-eq v0, v1, :cond_34

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_31

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x140

    if-eq v0, v1, :cond_2b

    const-string v0, ""

    return-object v0

    :cond_2b
    const-string v0, "xhdpi"

    return-object v0

    :cond_2e
    const-string v0, "hdpi"

    return-object v0

    :cond_31
    const-string v0, "mdpi"

    return-object v0

    :cond_34
    const-string v0, "ldpi"

    return-object v0

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method private v5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x77ada0351cf95b0L
    .end annotation

    const-wide v0, -0x49868b7e28e19d3L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-eqz p1, :cond_32

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_18
    if-ltz v2, :cond_32

    iget-object v3, p0, Lcom/aide/uidesigner/la;->VH:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_33

    if-eqz v3, :cond_2f

    return-object v3

    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_32
    return-object p1

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "drawable"

    const-string v3, ".9.png"

    const-string v4, ".jpg"

    const-string v5, ".png"

    const-string v6, "drawable-"

    const-wide v7, 0x23d0a6879ee04340L  # 3.579393360784931E-136

    :try_start_13
    sget-boolean v9, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v9, :cond_1a

    invoke-static {v7, v8, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    iget-object v9, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    if-eqz v9, :cond_21f

    if-eqz v2, :cond_21f

    const-string v9, "@drawable/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21f

    const/16 v9, 0xa

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/la;->v5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_63

    return-object v9

    :cond_63
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/la;->v5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_98

    return-object v9

    :cond_98
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/aide/uidesigner/la;->v5()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->DW(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_cd

    return-object v9

    :cond_cd
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_ef

    return-object v9

    :cond_ef
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_111

    return-object v9

    :cond_111
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Lcom/aide/uidesigner/la;->DW(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_133

    return-object v0

    :cond_133
    const/4 v0, 0x5

    new-array v9, v0, [Ljava/lang/String;
    :try_end_136
    .catchall {:try_start_13 .. :try_end_136} :catchall_221

    const/4 v10, 0x0

    const-string v11, "xxhpdi"

    aput-object v11, v9, v10

    const/4 v12, 0x1

    const-string v13, "xhdpi"

    aput-object v13, v9, v12

    const/4 v14, 0x2

    const-string v15, "hdpi"

    aput-object v15, v9, v14

    const/16 v16, 0x3

    const-string v17, "mdpi"

    aput-object v17, v9, v16

    const/16 v18, 0x4

    const-string v19, "ldpi"

    aput-object v19, v9, v18

    const/4 v7, 0x0

    :goto_152
    if-ge v7, v0, :cond_18e

    aget-object v8, v9, v7

    :try_start_156
    new-instance v14, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    iget-object v10, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v14}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_187

    return-object v0

    :cond_187
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x5

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x2

    goto :goto_152

    :cond_18e
    new-array v5, v0, [Ljava/lang/String;
    :try_end_190
    .catchall {:try_start_156 .. :try_end_190} :catchall_221

    const/4 v7, 0x0

    aput-object v11, v5, v7

    const/4 v7, 0x1

    aput-object v13, v5, v7

    const/4 v7, 0x2

    aput-object v15, v5, v7

    aput-object v17, v5, v16

    aput-object v19, v5, v18

    const/4 v7, 0x0

    :goto_19e
    if-ge v7, v0, :cond_1d7

    aget-object v0, v5, v7

    :try_start_1a2
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/aide/uidesigner/la;->j6(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1d3

    return-object v0

    :cond_1d3
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x5

    goto :goto_19e

    :cond_1d7
    new-array v4, v0, [Ljava/lang/String;
    :try_end_1d9
    .catchall {:try_start_1a2 .. :try_end_1d9} :catchall_221

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v7, 0x1

    aput-object v13, v4, v7

    const/4 v7, 0x2

    aput-object v15, v4, v7

    aput-object v17, v4, v16

    aput-object v19, v4, v18

    const/4 v10, 0x0

    :goto_1e7
    if-ge v10, v0, :cond_21f

    aget-object v5, v4, v10

    :try_start_1eb
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Lcom/aide/uidesigner/la;->DW(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_219
    .catchall {:try_start_1eb .. :try_end_219} :catchall_221

    if-eqz v5, :cond_21c

    return-object v5

    :cond_21c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e7

    :cond_21f
    const/4 v0, 0x0

    return-object v0

    :catchall_221
    move-exception v0

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_22e

    const-wide v3, 0x23d0a6879ee04340L  # 3.579393360784931E-136

    invoke-static {v0, v3, v4, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22e
    goto :goto_230

    :goto_22f
    throw v0

    :goto_230
    goto :goto_22f
.end method

.method public DW()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x32350f863f87084L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@style/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_56

    return-object v3

    :catchall_56
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method

.method public FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x2e19ee7b50eeb334L  # -3.429732328224843E86

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    const-string v2, "@style/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    :cond_26
    return-object p1

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public FH()V
    .registers 9

    const-wide v0, -0x1b684424d21574b7L  # -3.756859864161157E176

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/la;->VH:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/aide/uidesigner/la;->Zo:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_23
    const/16 v4, 0x3c

    if-ge v3, v4, :cond_54

    iget-object v4, p0, Lcom/aide/uidesigner/la;->v5:Ljava/util/Map;

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/uidesigner/la;->Zo:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/uidesigner/la;->VH:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_54
    iget-object v3, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    if-eqz v3, :cond_85

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    const-string v6, "values"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/uidesigner/la;->j6(ILjava/io/File;)V

    const/4 v2, 0x1

    :goto_65
    if-ge v2, v4, :cond_85

    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "values-v"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/aide/uidesigner/la;->j6(ILjava/io/File;)V
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_86

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_85
    return-void

    :catchall_86
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_8e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8e
    goto :goto_90

    :goto_8f
    throw v2

    :goto_90
    goto :goto_8f
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x1837acf4ace7a18L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    :goto_d
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@drawable/image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/aide/uidesigner/la;->DW(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_40

    return-object v0

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3d
    const-string v0, "image"

    return-object v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0xbeb4db47c644dfL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/uidesigner/la;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/uidesigner/la;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;)Ljava/lang/String;
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2076a25a27e04c4bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v0, "@style/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, p2, v1}, Lcom/aide/uidesigner/la;->j6(Ljava/lang/String;Lcom/aide/uidesigner/N$a;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_25

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, 0x2076a25a27e04c4bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method public j6()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x4f57704bd0f4b469L  # -2.7150835105624836E-74

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    if-eqz v3, :cond_88

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_8e

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v4, :cond_88

    aget-object v7, v3, v6

    :try_start_20
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v8, :cond_85

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_64

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_64

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_82

    :cond_64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@drawable/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {v10, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8d
    .catchall {:try_start_20 .. :try_end_8d} :catchall_8e

    return-object v3

    :catchall_8e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v3, :cond_96

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_96
    goto :goto_98

    :goto_97
    throw v2

    :goto_98
    goto :goto_97
.end method

.method public j6(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/la;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xbb98d7a5bc89c00L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_4a

    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/aide/uidesigner/la;->FH:Ljava/io/File;

    const-string v2, "drawable"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/aide/uidesigner/la;->Hw:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_44} :catch_45
    .catchall {:try_start_c .. :try_end_44} :catchall_4a

    goto :goto_49

    :catch_45
    move-exception v0

    :try_start_46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    :goto_49
    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/la;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, 0xbb98d7a5bc89c00L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method
