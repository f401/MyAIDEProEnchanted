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
        "Ljava/util/Comparator<",
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
    .registers 5

    const-wide v0, 0x4e254192869da105L  # 2.865322281020565E68

    const-wide v2, 0xd85156d853aa4a1L

    const-class v4, Lcom/aide/ui/browsers/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/browsers/l;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x26d62871a3120e5L
    .end annotation

    const-string v0, "."

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/browsers/l;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, -0x18e2b98a5d992353L  # -5.095157991703972E188

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-static {p1}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v1, :cond_2c

    if-nez v2, :cond_2c

    return v5

    :cond_2c
    const/4 v6, 0x1

    if-nez v1, :cond_32

    if-eqz v2, :cond_32

    return v6

    :cond_32
    if-eqz v1, :cond_4d

    if-eqz v2, :cond_4d

    invoke-static {v3}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v4}, Lcom/aide/ui/browsers/FileBrowser;->j6(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_43

    if-nez v1, :cond_43

    return v6

    :cond_43
    if-nez v0, :cond_48

    if-eqz v1, :cond_48

    return v5

    :cond_48
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4d
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_71

    const-string v2, ""

    if-lez v1, :cond_5a

    :try_start_55
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5b

    :cond_5a
    move-object v1, v2

    :goto_5b
    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_65
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6c

    return v0

    :cond_6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_71

    return p1

    :catchall_71
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/l;->DW:Z

    if-eqz v1, :cond_82

    const-wide v2, -0x18e2b98a5d992353L  # -5.095157991703972E188

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
.end method
