.class public Labcd/Ji;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ji$a;,
        Labcd/Ji$b;,
        Labcd/Ji$c;,
        Labcd/Ji$d;,
        Labcd/Ji$d$a;,
        Labcd/Ji$e;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:Labcd/Zw$a;
    .annotation runtime Labcd/ru;
        field = 0x32baaf8a10a616b4L
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x97f5a0b379f0e31L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/Ji$e;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Labcd/Dw;
    .annotation runtime Labcd/ru;
        field = 0x33754977ff3d9127L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDw",
            "<",
            "Lcom/dropbox/client2/android/a;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3d64a3e5273143e0L
    .end annotation
.end field

.field private J8:Labcd/Ji$b;
    .annotation runtime Labcd/ru;
        field = 0x2c8bb53f8665ceb7L
    .end annotation
.end field

.field private Mr:I
    .annotation runtime Labcd/ru;
        field = -0x1f821ea518efc0d1L
    .end annotation
.end field

.field private QX:Ljava/util/HashSet;
    .annotation runtime Labcd/ru;
        field = -0x510edc443a44d28L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Labcd/Ji$e;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x8860b09a0866d71L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x5938035882d6000L
    .end annotation
.end field

.field private Ws:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x2fd142a231c7b109L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/Ji$c;",
            ">;"
        }
    .end annotation
.end field

.field private XL:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0xdc6645c39bef77bL
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x1b3fc344f4a6d353L
    .end annotation
.end field

.field private a8:Ljava/nio/channels/InterruptibleChannel;
    .annotation runtime Labcd/ru;
        field = -0x3a34fc488d7faaddL
    .end annotation
.end field

.field private aM:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1573f6fdddeead34L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x522dd11bb8c3c91L
    .end annotation
.end field

.field private j3:Z
    .annotation runtime Labcd/ru;
        field = -0x5e06e46411a6cd83L
    .end annotation
.end field

.field private lg:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = 0x132f15c1f732d904L
    .end annotation
.end field

.field private rN:Z
    .annotation runtime Labcd/ru;
        field = -0xc56243e7f5f0890L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = -0x20c8f8172dc335e0L
    .end annotation
.end field

.field private u7:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x218482032357276cL
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = -0x1100a8fe0416e4L
    .end annotation
.end field

.field private we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2117c18c79d38e00L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x26da0041e5bb2fe9L
    .end annotation

    const-wide v8, -0x289385fb471ad5e0L    # -1.3696735000229602E113

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Ji;

    const-wide v2, 0x3cc87a6d76bb9749L    # 6.7940744100194515E-16

    const-wide v4, 0x3cc87a6d76bb9749L    # 6.7940744100194515E-16

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x289385fb471ad5e0L    # -1.3696735000229602E113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/Zw$a;->j6:Labcd/Zw$a;

    sput-object v0, Labcd/Ji;->j6:Labcd/Zw$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x425e8785511b74efL    # 5.244907203658271E11

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x425e8785511b74efL    # 5.244907203658271E11

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->v5:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->VH:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->gn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Ji;->Ws:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Ji;->lg:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/Ji;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Labcd/Ji;->J0:Ljava/lang/String;

    return-object p1
.end method

.method private DW(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xd07893022feeac8L
    .end annotation

    const-wide v6, -0x5240327de9c270L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5240327de9c270L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Labcd/Ji;->j6(Ljava/lang/String;Labcd/Dw$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolve conflict "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    iget-object v0, p3, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, p2, v0, v2, v3}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download conflict "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Labcd/Ji;->J0(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2f2394eba7e57dbbL
    .end annotation

    const-wide v2, -0x18104db9c902f10dL    # -4.5191521657587244E192

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18104db9c902f10dL    # -4.5191521657587244E192

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBox"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCESS_KEY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ACCESS_SECRET"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Labcd/Ji;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/Ji;->Zo:Z

    return v0
.end method

.method private EQ()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x303fb1a49cc0ef24L
    .end annotation

    const-wide v6, 0x268f74e3f581e9c4L    # 5.948173237900984E-123

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x268f74e3f581e9c4L    # 5.948173237900984E-123

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    if-nez v0, :cond_2

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.phonegap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Labcd/Yw;

    const-string v1, "2hlvmjwfmylgnjp"

    const-string v2, "99o0k7gok4ktizu"

    invoke-direct {v0, v1, v2}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    invoke-direct {p0}, Labcd/Ji;->J8()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Labcd/Xw;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, Labcd/Xw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/dropbox/client2/android/a;

    sget-object v3, Labcd/Ji;->j6:Labcd/Zw$a;

    invoke-direct {v0, v1, v3, v2}, Lcom/dropbox/client2/android/a;-><init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/Ji;->VH:Z

    :goto_1
    new-instance v1, Labcd/Dw;

    invoke-direct {v1, v0}, Labcd/Dw;-><init>(Labcd/Zw;)V

    iput-object v1, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-boolean v0, p0, Labcd/Ji;->VH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v0}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v0

    iget-wide v0, v0, Labcd/Dw$a;->Zo:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Labcd/Ji;->VH:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Ji;->gn:Z

    :cond_2
    iget-boolean v0, p0, Labcd/Ji;->VH:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Labcd/Ji;->Zo:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    iget-boolean v0, p0, Labcd/Ji;->tp:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Labcd/Ji;->gn:Z

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Ji;->gn:Z

    new-instance v0, Labcd/Fi;

    invoke-direct {v0, p0}, Labcd/Fi;-><init>(Labcd/Ji;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    :cond_4
    iget-boolean v0, p0, Labcd/Ji;->VH:Z

    return v0

    :cond_5
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Labcd/Yw;

    const-string v1, "jnyrhqjnzlzatzo"

    const-string v2, "fi1pqoyzax8vktt"

    invoke-direct {v0, v1, v2}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_6
    new-instance v0, Labcd/Yw;

    const-string v1, "fkerp7oej8u61j0"

    const-string v2, "5rqhagcf14jbzcd"

    invoke-direct {v0, v1, v2}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/dropbox/client2/android/a;

    sget-object v2, Labcd/Ji;->j6:Labcd/Zw$a;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/client2/android/a;-><init>(Labcd/Yw;Labcd/Zw$a;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/Ji;->VH:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_8

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8
    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Labcd/Ji;->VH:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method static synthetic EQ(Labcd/Ji;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/Ji;->tp:Z

    return v0
.end method

.method private EQ(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x158dcaf776ca92a8L
    .end annotation

    const-wide v2, -0x2ebf53d9b4fdd3e0L    # -2.5303959412819694E83

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ebf53d9b4fdd3e0L    # -2.5303959412819694E83

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".aidedropbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".syncconflict."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic FH(Labcd/Ji;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->Ws:Ljava/util/List;

    return-object v0
.end method

.method static synthetic Hw(Labcd/Ji;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    return-object v0
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x106e5e0243d91003L
    .end annotation

    const-wide v2, -0x11219ce29f1836c3L    # -1.1247784278208985E226

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11219ce29f1836c3L    # -1.1247784278208985E226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Labcd/Ji;->J0:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ji;->we:Ljava/lang/String;

    iget-object v0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private J0(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x69a3366ed0d7a3e0L
    .end annotation

    const-wide v4, 0x8d79f9eb76c1038L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8d79f9eb76c1038L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".syncconflict."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private J8()[Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x12a4051fa17708a8L
    .end annotation

    const-wide v6, -0x284b7882a04e22f0L    # -3.1597418114802055E114

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ji;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x284b7882a04e22f0L    # -3.1597418114802055E114

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DropBox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ACCESS_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCESS_SECRET"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v1, v0, v2

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private VH(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2ce0c1aba9e801a1L
    .end annotation

    const-wide v8, 0x25f5d0a092933f31L    # 8.056678728665698E-126

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25f5d0a092933f31L    # 8.056678728665698E-126

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;
    :try_end_1
    .catch Labcd/Jw; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-boolean v1, v0, Labcd/Dw$e;->J8:Z
    :try_end_2
    .catch Labcd/Jw; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_1

    move-object v0, v6

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    :try_start_3
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v0, p1}, Labcd/Dw;->j6(Ljava/lang/String;)Labcd/Dw$e;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic VH(Labcd/Ji;)Z
    .registers 2

    invoke-direct {p0}, Labcd/Ji;->EQ()Z

    move-result v0

    return v0
.end method

.method static synthetic Zo(Labcd/Ji;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->we:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic gn(Labcd/Ji;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->J0:Ljava/lang/String;

    return-object v0
.end method

.method private gn(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12114b64192b7555L
    .end annotation

    const-wide v2, 0x7f846e80476dd93L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7f846e80476dd93L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-static {p1}, Labcd/FileSystemUtils;->isFileSystemRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Labcd/Ji;->u7(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-object p1

    :cond_1
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic j6(Labcd/Ji;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Labcd/Ji;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Labcd/Ji;->we:Ljava/lang/String;

    return-object p1
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x289cbfdc1e99200L
    .end annotation

    const-wide v6, 0x2aa66387fa9aec0L    # 8.07321792414751E-296

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2aa66387fa9aec0L    # 8.07321792414751E-296

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v1, p3, Labcd/Dw$e;->gn:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    instance-of v2, v0, Ljava/nio/channels/InterruptibleChannel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast v0, Ljava/nio/channels/InterruptibleChannel;

    iput-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v1, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    iget-boolean v0, p0, Labcd/Ji;->rN:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {p2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Labcd/Ji$d;->j6(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :cond_3
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    iget-object v0, p3, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, p2, v0, v2, v3}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catch_1
    move-exception v0

    :try_start_13
    invoke-static {p2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Labcd/Ji$d;->j6(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :goto_2
    :try_start_14
    iget-object v1, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    iget-boolean v2, p0, Labcd/Ji;->rN:Z

    if-eqz v2, :cond_4

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v1

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    :cond_4
    :try_start_19
    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_1b
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0

    const/4 v2, 0x0

    :try_start_1c
    iput-object v2, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    :try_start_1d
    throw v0
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0

    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x4f19a7f3b50980b0L
    .end annotation

    sget-boolean v3, Labcd/Ji;->DW:Z

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    const-wide v4, 0x165a02e3affe7298L    # 5.309635907960212E-201

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const/4 v6, 0x1

    aput-object p2, v3, v6

    const/4 v6, 0x2

    aput-object p3, v3, v6

    const/4 v6, 0x3

    aput-object p4, v3, v6

    const/4 v6, 0x4

    aput-object p5, v3, v6

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v3, v6

    invoke-static {v4, v5, p0, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_0
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_4

    if-nez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {p2}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget-object v2, v2, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, p2, v2, v4, v5}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    if-nez p6, :cond_2

    move-object/from16 v0, p5

    invoke-direct {p0, p1, p2, v0}, Labcd/Ji;->DW(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v10

    iget-wide v2, p3, Labcd/Ji$d$a;->Hw:J

    move-object/from16 v0, p5

    iget-object v4, v0, Labcd/Dw$e;->we:Ljava/lang/String;

    iget-object v5, p3, Labcd/Ji$d$a;->FH:Ljava/lang/String;

    invoke-static {v10, v11, v2, v3}, Labcd/FileSystemUtils;->j6(JJ)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    if-nez p6, :cond_2

    move-object/from16 v0, p5

    invoke-direct {p0, p1, p2, v0}, Labcd/Ji;->DW(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {p2}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v8, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v3 .. v8}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    iget-object v2, v2, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v10, v11}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_2

    if-nez p6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-direct {p0, p1, p2, v0}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto/16 :goto_1
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2a220476875fbec0L
    .end annotation

    const-wide v6, 0x4611ff8d09cd77f0L    # 3.564919862697564E29

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4611ff8d09cd77f0L    # 3.564919862697564E29

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Syncing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {p2}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p3}, Labcd/Ji;->VH(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 27
    .annotation runtime Labcd/su;
        method = -0x15de10bebcd533e0L
    .end annotation

    :try_start_0
    sget-boolean v4, Labcd/Ji;->DW:Z

    if-eqz v4, :cond_0

    new-instance v10, Ljava/lang/Float;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Float;-><init>(F)V

    new-instance v11, Ljava/lang/Float;

    move/from16 v0, p5

    invoke-direct {v11, v0}, Ljava/lang/Float;-><init>(F)V

    const-wide v4, -0x1f5185f8b3c1ad40L    # -5.2304049843786166E157

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v11}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Labcd/Ji;->j6(ZLjava/lang/String;F)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p3

    invoke-virtual/range {v4 .. v9}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;

    move-result-object v4

    iget-object v5, v4, Labcd/Dw$e;->Ws:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v4, v4, Labcd/Dw$e;->Ws:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Dw$e;

    iget-boolean v6, v4, Labcd/Dw$e;->J8:Z

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Dw$e;->j6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_1
    sget-boolean v4, Labcd/Ji;->FH:Z

    if-eqz v4, :cond_2

    const-wide v6, -0x1f5185f8b3c1ad40L    # -5.2304049843786166E157

    new-instance v12, Ljava/lang/Float;

    move/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/lang/Float;-><init>(F)V

    new-instance v13, Ljava/lang/Float;

    move/from16 v0, p5

    invoke-direct {v13, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v5 .. v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v5

    :cond_3
    :try_start_2
    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v19

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Labcd/Ji$d;->FH(Ljava/lang/String;)Labcd/Ji$d$a;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Labcd/Dw$e;

    move-object v11, v0

    if-eqz v7, :cond_6

    const/4 v4, 0x1

    :goto_4
    sub-float v5, p5, p4

    move/from16 v0, v16

    int-to-float v8, v0

    move/from16 v0, v19

    int-to-float v9, v0

    mul-float/2addr v8, v5

    div-float/2addr v8, v9

    add-float v8, v8, p4

    div-float/2addr v5, v9

    add-float v9, v8, v5

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete local "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {v6}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Labcd/Ji$d;->j6(Ljava/lang/String;)V

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/Ji;->rN:Z

    if-nez v4, :cond_10

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v4, v7}, Labcd/Dw;->j6(Ljava/lang/String;)Labcd/Dw$e;

    move-result-object v4

    iget-object v4, v4, Labcd/Dw$e;->we:Ljava/lang/String;

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v10, v11}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {v6}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v12

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v7

    invoke-virtual/range {v9 .. v15}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$e;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    iget-object v4, v4, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {v6}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v8, v9}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropbox delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v5, v11, Labcd/Dw$e;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Labcd/Dw;->DW(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Labcd/Ji$d;->j6(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    iget-boolean v4, v11, Labcd/Dw$e;->v5:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v6}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v6}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    iget-object v4, v11, Labcd/Dw$e;->we:Ljava/lang/String;

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v12, v13}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v7, v11, Labcd/Dw$e;->gn:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V

    goto/16 :goto_5

    :cond_c
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v11}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto/16 :goto_5

    :cond_e
    iget-boolean v4, v11, Labcd/Dw$e;->v5:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v7, v11, Labcd/Dw$e;->gn:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V

    goto/16 :goto_5

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v9, v11

    invoke-direct/range {v4 .. v10}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :cond_10
    :try_start_5
    new-instance v4, Labcd/Ji$a;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Labcd/Ji$a;-><init>(Labcd/Di;)V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_11
    return-void

    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Z)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2b4412dd6b563189L
    .end annotation

    const-wide v10, 0x87c88741a4fddb9L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x87c88741a4fddb9L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Labcd/Ji$d;->DW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;
    :try_end_1
    .catch Labcd/Pw; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :cond_1
    :try_start_2
    invoke-virtual {p1, p2}, Labcd/Ji$d;->FH(Ljava/lang/String;)Labcd/Ji$d$a;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    move v8, p3

    invoke-direct/range {v2 .. v8}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V

    return-void

    :catch_0
    move-exception v0

    iget v2, v0, Labcd/Pw;->DW:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Labcd/Ji$e;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x11b559dbcb687c80L
    .end annotation

    const-wide v10, 0x1189176d74cf0968L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1189176d74cf0968L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Labcd/Ji;->rN:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v1, p1, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v6, p1, Labcd/Ji$e;->Hw:Ljava/lang/String;

    invoke-static {v5}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    iget-object v1, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v1}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v4

    new-instance v1, Labcd/Ji$d;

    iget-wide v2, v4, Labcd/Dw$a;->Zo:J

    iget-object v4, v4, Labcd/Dw$a;->DW:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Labcd/Ji$d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/Ji$d;->j6()V

    new-instance v2, Labcd/Gi;

    invoke-direct {v2, p0, v5}, Labcd/Gi;-><init>(Labcd/Ji;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    invoke-direct {p0, v1, v0, v6}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Labcd/Ji$d;->j6()V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Labcd/Ji;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Labcd/Ji$d;

    invoke-direct {v1, v2}, Labcd/Ji$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Labcd/Ji$d;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v3}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v3

    iget-wide v4, v3, Labcd/Dw$a;->Zo:J

    iget-wide v8, v1, Labcd/Ji$d;->FH:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was downloaded from the Dropbox of \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Labcd/Ji$d;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Please login to this account."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Labcd/Ji$d;->j6()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method static synthetic j6(Labcd/Ji;Labcd/Ji$e;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ji;->j6(Labcd/Ji$e;)V

    return-void
.end method

.method static synthetic j6(Labcd/Ji;ZLjava/lang/String;F)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Ji;->j6(ZLjava/lang/String;F)V

    return-void
.end method

.method private j6(ZLjava/lang/String;F)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x5726c94a456d40e1L
    .end annotation

    const-wide v8, 0x23b80fa323864027L    # 1.29311499955227E-136

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p3}, Ljava/lang/Float;-><init>(F)V

    const-wide v0, 0x23b80fa323864027L    # 1.29311499955227E-136

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean p1, p0, Labcd/Ji;->j3:Z

    iput-object p2, p0, Labcd/Ji;->aM:Ljava/lang/String;

    float-to-int v0, p3

    iput v0, p0, Labcd/Ji;->Mr:I

    new-instance v0, Labcd/Hi;

    invoke-direct {v0, p0}, Labcd/Hi;-><init>(Labcd/Ji;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    move-wide v2, v8

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Labcd/Ji;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Ji;->v5:Z

    return p1
.end method

.method private j6(Ljava/lang/String;Labcd/Dw$e;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x24851264359905c8L
    .end annotation

    const-wide v2, 0x1ab52dbabd2b7ee0L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ab52dbabd2b7ee0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v4, p2, Labcd/Dw$e;->DW:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v1, p2, Labcd/Dw$e;->gn:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic tp(Labcd/Ji;)Labcd/Ji$b;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->J8:Labcd/Ji$b;

    return-object v0
.end method

.method private tp(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fbe16ea2b0bb589L
    .end annotation

    const-wide v2, -0x1d1ca18a593a8efL    # -6.322436833861282E299

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d1ca18a593a8efL    # -6.322436833861282E299

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "bin"

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic u7(Labcd/Ji;)Labcd/Dw;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    return-object v0
.end method

.method private u7(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd922757ef7b0139L
    .end annotation

    const-wide v2, 0xc54990b7fe241L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc54990b7fe241L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".aidedropbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic v5(Labcd/Ji;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    return-object v0
.end method

.method private we()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1ffcf8da9d907af3L
    .end annotation

    const-wide v4, 0x13da109b40f45b0dL    # 4.839033457214054E-213

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13da109b40f45b0dL    # 4.839033457214054E-213

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private we(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x40b991c087950115L
    .end annotation

    const-wide v2, -0x2502cbd07ae6fb6bL    # -2.0243157528434405E130

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2502cbd07ae6fb6bL    # -2.0243157528434405E130

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Ji;->gn(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x18d34368f1ebb00L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18d34368f1ebb00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "Sync with Dropbox..."

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Ji$c;)V
    .registers 6

    const-wide v2, -0x4e15dd3055aa4ccL

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e15dd3055aa4ccL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ji;->Ws:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x3588543b7c026f51L    # 8.128222490573646E-51

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3588543b7c026f51L    # 8.128222490573646E-51

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v4, 0x179bfced26de6d17L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x179bfced26de6d17L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Ji;->gn:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x4cff3bd9da586abL    # -2.386348071570319E285

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4cff3bd9da586abL    # -2.386348071570319E285

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ji;->Mr:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x58869537ee654dc7L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x58869537ee654dc7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, 0x460eb170858a75d3L    # 3.039699690608735E29

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x460eb170858a75d3L    # 3.039699690608735E29

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0xb0bd8a3678a7e74L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb0bd8a3678a7e74L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->aM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public VH()Z
    .registers 5

    const-wide v2, -0x5ba3ec3d633d1fb0L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5ba3ec3d633d1fb0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Labcd/Ji;->j3:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v2, -0x163d1d6cc8122520L    # -2.8911156170810394E201

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x163d1d6cc8122520L    # -2.8911156170810394E201

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/Di;

    invoke-direct {v1, p0}, Labcd/Di;-><init>(Labcd/Ji;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x224518b93541a568L    # -3.2806923716207093E143

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x224518b93541a568L    # -3.2806923716207093E143

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn()V
    .registers 5

    const-wide v2, -0x16bc1fa0df56d1e8L    # -1.1886281333463632E199

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16bc1fa0df56d1e8L    # -1.1886281333463632E199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v0}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/a;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/a;->u7()V

    invoke-direct {p0}, Labcd/Ji;->we()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->VH:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x129c1cd367322520L    # -8.775358292035007E218

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x129c1cd367322520L    # -8.775358292035007E218

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Labcd/Ji;->rN:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Labcd/Ii;

    invoke-direct {v3, p0, v0}, Labcd/Ii;-><init>(Labcd/Ji;Ljava/nio/channels/InterruptibleChannel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public j6(Labcd/Ji$c;)V
    .registers 6

    const-wide v2, -0x4f5ca66dbfbcd6c7L    # -2.138993831829587E-74

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4f5ca66dbfbcd6c7L    # -2.138993831829587E-74

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ji;->Ws:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Labcd/Ji$b;)V
    .registers 10

    const-wide v2, 0x1e58bd4e188ad634L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e58bd4e188ad634L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Labcd/Ji;->tp:Z

    iput-object p1, p0, Labcd/Ji;->J0:Ljava/lang/String;

    iput-object p2, p0, Labcd/Ji;->J8:Labcd/Ji$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0x6566d3e24b0ed8L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6566d3e24b0ed8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->x9()V

    :cond_1
    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Labcd/Ji;->tp:Z

    iget-object v0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    new-instance v4, Labcd/Ji$e;

    invoke-direct {v4, p1, p2}, Labcd/Ji$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    const-wide v2, -0x58262b7c64429f70L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x58262b7c64429f70L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->x9()V

    :cond_1
    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Labcd/Ji$e;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Labcd/Ji$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ji$e;

    invoke-virtual {v0, v4}, Labcd/Ji$e;->j6(Labcd/Ji$e;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    :goto_0
    return-void

    :cond_3
    iput-boolean p2, p0, Labcd/Ji;->tp:Z

    iget-object v0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ji;->FH:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v4, 0x2a57c7a21a0524c7L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2a57c7a21a0524c7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0xcd317fa8a92d709L    # -6.315961470158654E246

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcd317fa8a92d709L    # -6.315961470158654E246

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()V
    .registers 5

    const-wide v2, -0xe86de27bd637c04L    # -4.091355301029645E238

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe86de27bd637c04L    # -4.091355301029645E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Ji;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()V
    .registers 7

    const-wide v4, 0x5453bddfa5b0c139L    # 1.686720084022484E98

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5453bddfa5b0c139L    # 1.686720084022484E98

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/Ji;->v5:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->v5:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Ji;->Zo:Z

    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v0}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v0

    check-cast v0, Lcom/dropbox/client2/android/a;

    invoke-virtual {v0}, Lcom/dropbox/client2/android/a;->tp()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/dropbox/client2/android/a;->EQ()Ljava/lang/String;

    invoke-virtual {v0}, Labcd/Ww;->VH()Labcd/Xw;

    move-result-object v0

    iget-object v1, v0, Labcd/_w;->j6:Ljava/lang/String;

    iget-object v0, v0, Labcd/_w;->DW:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Labcd/Ji;->DW(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Labcd/Ji;->VH:Z

    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Labcd/Ji;->J0()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "Dropbox"

    const-string v2, "Couldn\'t authenticate with Dropbox."

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_5
    invoke-direct {p0}, Labcd/Ji;->J0()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v2, -0xd9d2fb90c496ac0L

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd9d2fb90c496ac0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Labcd/Ji;->aM:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6

    const-wide v2, -0x23344e03744d71f0L    # -1.0306553495481329E139

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23344e03744d71f0L    # -1.0306553495481329E139

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
