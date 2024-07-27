.class Lcom/aide/ui/browsers/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Lcom/aide/ui/browsers/FileBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/browsers/l;

    const-wide v2, 0x4e254192869da105L    # 2.865322281020565E68

    const-wide v4, 0xd85156d853aa4a1L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/FileBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/browsers/l;->FH:Lcom/aide/ui/browsers/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/browsers/l;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x26d62871a3120e5L
    .end annotation

    const-wide v2, -0x18e2b98a5d992353L    # -5.095157991703972E188

    const/4 v1, 0x1

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v4, Lcom/aide/ui/browsers/l;->j6:Z

    if-eqz v4, :cond_0

    const-wide v4, -0x18e2b98a5d992353L    # -5.095157991703972E188

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p2}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v5

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    invoke-static {v6}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v7}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v4, :cond_4

    if-nez v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_1

    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    const-string v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string v0, ""

    if-lez v1, :cond_8

    :try_start_1
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    :cond_8
    const-string v1, ""

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/l;->DW:Z

    if-eqz v0, :cond_9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method
