.class public Lcom/aide/ui/marketing/a$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/marketing/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field public FH:I

.field public Hw:Ljava/lang/String;

.field public VH:Ljava/lang/String;

.field public Zo:Ljava/lang/String;

.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/marketing/a$a;

    const-wide v1, -0x7ed6f678287bb20L  # -2.451924119397972E270

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/a$a;->j6:Z

    if-eqz v0, :cond_16

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x17bcd2e3dfb33525L  # -1.749806426366191E194

    const/4 v3, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/ui/marketing/a$a;->FH:I

    iput-object p2, p0, Lcom/aide/ui/marketing/a$a;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/marketing/a$a;->v5:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/marketing/a$a;->Zo:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/marketing/a$a;->VH:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/a$a;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x17bcd2e3dfb33525L  # -1.749806426366191E194

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method private j6(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x7354325d55b5350L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/a$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3f05cde336bdf34L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_33

    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_30} :catch_31
    .catchall {:try_start_11 .. :try_end_30} :catchall_33

    goto :goto_32

    :catch_31
    move-exception p1

    :goto_32
    return-object v0

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/a$a;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x3f05cde336bdf34L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v0

    :goto_46
    goto :goto_45
.end method


# virtual methods
.method public DW(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-wide v0, -0x4008c98a26453a40L  # -1.4507959847509113

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "\n"

    invoke-virtual {p0, p1}, Lcom/aide/ui/marketing/a$a;->j6(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/a$a;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x1c0b51f6af7c9208L  # -3.1967191026918364E173

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/marketing/a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/marketing/a$a;->VH:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/aide/ui/marketing/a$a;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/marketing/a$a;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
