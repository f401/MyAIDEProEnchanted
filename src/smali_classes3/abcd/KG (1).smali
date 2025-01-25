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
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Labcd/LG;-><init>(JJLabcd/LG;)V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
