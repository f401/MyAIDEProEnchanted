.class Labcd/KG;
.super Labcd/LG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/LG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(JJ)V
    .registers 12

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Labcd/LG;-><init>(JJLabcd/LG;)V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
