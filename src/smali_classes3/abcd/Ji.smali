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
            "Ljava/util/Set<",
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
            "LDw<",
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
            "Ljava/util/HashSet<",
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
            "Ljava/util/List<",
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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x26da0041e5bb2fe9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x289385fb471ad5e0L  # -1.3696735000229602E113

    :try_start_6
    const-class v3, Labcd/Ji;

    const-wide v4, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Ji;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    sget-object v3, Labcd/Zw$a;->j6:Labcd/Zw$a;

    sput-object v3, Labcd/Ji;->j6:Labcd/Zw$a;
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v3

    sget-boolean v4, Labcd/Ji;->FH:Z

    if-eqz v4, :cond_24

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x425e8785511b74efL  # 5.244907203658271E11

    :try_start_6
    sget-boolean v3, Labcd/Ji;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/Ji;->v5:Z

    iput-boolean v3, p0, Labcd/Ji;->Zo:Z

    iput-boolean v3, p0, Labcd/Ji;->VH:Z

    iput-boolean v3, p0, Labcd/Ji;->gn:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Ji;->Ws:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/Ji;->lg:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v3

    sget-boolean v4, Labcd/Ji;->FH:Z

    if-eqz v4, :cond_53

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_53
    throw v3
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

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x5240327de9c270L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0, p2, p3}, Labcd/Ji;->j6(Ljava/lang/String;Labcd/Dw$e;)Z

    move-result v0

    if-eqz v0, :cond_34

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

    move-result-wide v1

    invoke-virtual {p1, p2, v0, v1, v2}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4e

    :cond_34
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
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_4f

    :goto_4e
    return-void

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_61

    const-wide v2, -0x5240327de9c270L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method private DW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2f2394eba7e57dbbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x18104db9c902f10dL  # -4.5191521657587244E192

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DropBox"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ACCESS_KEY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ACCESS_SECRET"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x18104db9c902f10dL  # -4.5191521657587244E192

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method static synthetic DW(Labcd/Ji;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/Ji;->Zo:Z

    return p0
.end method

.method private EQ()Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x303fb1a49cc0ef24L
    .end annotation

    const-wide v0, 0x268f74e3f581e9c4L  # 5.948173237900984E-123

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_a2

    iget-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v3, 0x1

    if-nez v2, :cond_86

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.phonegap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v2, Labcd/Yw;

    const-string v4, "2hlvmjwfmylgnjp"

    const-string v5, "99o0k7gok4ktizu"

    invoke-direct {v2, v4, v5}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_2b
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.web"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v2, Labcd/Yw;

    const-string v4, "jnyrhqjnzlzatzo"

    const-string v5, "fi1pqoyzax8vktt"

    invoke-direct {v2, v4, v5}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_3f
    new-instance v2, Labcd/Yw;

    const-string v4, "fkerp7oej8u61j0"

    const-string v5, "5rqhagcf14jbzcd"

    invoke-direct {v2, v4, v5}, Labcd/Yw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    invoke-direct {p0}, Labcd/Ji;->J8()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_62

    new-instance v6, Labcd/Xw;

    aget-object v7, v4, v5

    aget-object v4, v4, v3

    invoke-direct {v6, v7, v4}, Labcd/Xw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/dropbox/client2/android/a;

    sget-object v7, Labcd/Ji;->j6:Labcd/Zw$a;

    invoke-direct {v4, v2, v7, v6}, Lcom/dropbox/client2/android/a;-><init>(Labcd/Yw;Labcd/Zw$a;Labcd/Xw;)V

    iput-boolean v3, p0, Labcd/Ji;->VH:Z

    goto :goto_6b

    :cond_62
    new-instance v4, Lcom/dropbox/client2/android/a;

    sget-object v6, Labcd/Ji;->j6:Labcd/Zw$a;

    invoke-direct {v4, v2, v6}, Lcom/dropbox/client2/android/a;-><init>(Labcd/Yw;Labcd/Zw$a;)V

    iput-boolean v5, p0, Labcd/Ji;->VH:Z

    :goto_6b
    new-instance v2, Labcd/Dw;

    invoke-direct {v2, v4}, Labcd/Dw;-><init>(Labcd/Zw;)V

    iput-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-boolean v4, p0, Labcd/Ji;->VH:Z
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_a5

    if-eqz v4, :cond_80

    :try_start_76
    invoke-virtual {v2}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v2

    iget-wide v4, v2, Labcd/Dw$a;->Zo:J
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7c} :catch_7d
    .catchall {:try_start_76 .. :try_end_7c} :catchall_a5

    goto :goto_80

    :catch_7d
    move-exception v2

    :try_start_7e
    iput-boolean v5, p0, Labcd/Ji;->VH:Z

    :cond_80
    :goto_80
    iget-boolean v2, p0, Labcd/Ji;->VH:Z

    if-eqz v2, :cond_86

    iput-boolean v3, p0, Labcd/Ji;->gn:Z

    :cond_86
    iget-boolean v2, p0, Labcd/Ji;->VH:Z

    if-nez v2, :cond_a2

    iget-boolean v2, p0, Labcd/Ji;->Zo:Z

    if-nez v2, :cond_a2

    iput-boolean v3, p0, Labcd/Ji;->Zo:Z

    iget-boolean v2, p0, Labcd/Ji;->tp:Z

    if-nez v2, :cond_98

    iget-boolean v2, p0, Labcd/Ji;->gn:Z

    if-nez v2, :cond_a2

    :cond_98
    iput-boolean v3, p0, Labcd/Ji;->gn:Z

    new-instance v2, Labcd/Fi;

    invoke-direct {v2, p0}, Labcd/Fi;-><init>(Labcd/Ji;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    :cond_a2
    iget-boolean v0, p0, Labcd/Ji;->VH:Z
    :try_end_a4
    .catchall {:try_start_7e .. :try_end_a4} :catchall_a5

    return v0

    :catchall_a5
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_ad

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ad
    throw v2
.end method

.method static synthetic EQ(Labcd/Ji;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/Ji;->tp:Z

    return p0
.end method

.method private EQ(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x158dcaf776ca92a8L
    .end annotation

    const-wide v0, -0x2ebf53d9b4fdd3e0L  # -2.5303959412819694E83

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".aidedropbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, ".syncconflict."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method static synthetic FH(Labcd/Ji;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->Ws:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Hw(Labcd/Ji;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    return-object p0
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x106e5e0243d91003L
    .end annotation

    const-wide v0, -0x11219ce29f1836c3L  # -1.1247784278208985E226

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1e

    const/4 v3, 0x0

    :try_start_10
    iput-object v3, p0, Labcd/Ji;->J0:Ljava/lang/String;

    iput-object v3, p0, Labcd/Ji;->we:Ljava/lang/String;

    iget-object v3, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    monitor-exit v2

    return-void

    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method private J0(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x69a3366ed0d7a3e0L
    .end annotation

    const-wide v0, 0x8d79f9eb76c1038L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".syncconflict."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_56

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    throw v2
.end method

.method private J8()[Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x12a4051fa17708a8L
    .end annotation

    const-wide v0, -0x284b7882a04e22f0L  # -3.1597418114802055E114

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DropBox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ACCESS_KEY"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ACCESS_SECRET"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    aput-object v3, v5, v4

    const/4 v0, 0x1

    aput-object v2, v5, v0

    :cond_30
    return-object v5

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method private VH(Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x2ce0c1aba9e801a1L
    .end annotation

    const-wide v0, 0x25f5d0a092933f31L  # 8.056678728665698E-126

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    :cond_c
    :try_start_c
    iget-object v3, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;

    move-result-object v2
    :try_end_17
    .catch Labcd/Jw; {:try_start_c .. :try_end_17} :catch_1e
    .catchall {:try_start_c .. :try_end_17} :catchall_28

    :try_start_17
    iget-boolean v3, v2, Labcd/Dw$e;->J8:Z
    :try_end_19
    .catch Labcd/Jw; {:try_start_17 .. :try_end_19} :catch_1c
    .catchall {:try_start_17 .. :try_end_19} :catchall_28

    if-eqz v3, :cond_20

    goto :goto_1f

    :catch_1c
    move-exception v3

    goto :goto_20

    :catch_1e
    move-exception v2

    :goto_1f
    const/4 v2, 0x0

    :cond_20
    :goto_20
    if-nez v2, :cond_27

    :try_start_22
    iget-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v2, p1}, Labcd/Dw;->j6(Ljava/lang/String;)Labcd/Dw$e;
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method static synthetic VH(Labcd/Ji;)Z
    .registers 1

    invoke-direct {p0}, Labcd/Ji;->EQ()Z

    move-result p0

    return p0
.end method

.method static synthetic Zo(Labcd/Ji;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->we:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic gn(Labcd/Ji;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->J0:Ljava/lang/String;

    return-object p0
.end method

.method private gn(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x12114b64192b7555L
    .end annotation

    const-wide v0, 0x7f846e80476dd93L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->XL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    :goto_12
    invoke-static {p1}, Labcd/FileSystemUtils;->isFileSystemRoot(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-direct {p0, p1}, Labcd/Ji;->u7(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object p1

    :cond_1f
    invoke-static {p1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_26

    goto :goto_12

    :cond_24
    const/4 p1, 0x0

    return-object p1

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method static synthetic j6(Labcd/Ji;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    return-object p0
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

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2aa66387fa9aec0L  # 8.07321792414751E-296

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v1, p3, Labcd/Dw$e;->gn:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    instance-of v3, v1, Ljava/nio/channels/InterruptibleChannel;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_91

    :try_start_24
    check-cast v1, Ljava/nio/channels/InterruptibleChannel;

    iput-object v1, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v3

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_91

    :cond_2d
    :goto_2d
    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v0, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_68
    .catchall {:try_start_2d .. :try_end_38} :catchall_66

    :try_start_38
    iget-boolean v1, p0, Labcd/Ji;->rN:Z
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_63

    if-eqz v1, :cond_4f

    :try_start_3c
    invoke-static {p2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Labcd/Ji$d;->j6(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43
    .catchall {:try_start_3c .. :try_end_42} :catchall_63

    goto :goto_44

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_63

    :try_start_45
    iget-object v0, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_91

    :try_start_48
    iput-object v2, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_91

    :cond_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_63

    :try_start_50
    iget-object v0, p3, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, p2, v0, v3, v4}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_68
    .catchall {:try_start_50 .. :try_end_59} :catchall_66

    :try_start_59
    iget-object v0, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_91

    :try_start_5c
    iput-object v2, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v0

    goto :goto_7f

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_60

    :try_start_62
    throw v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_91

    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_66} :catch_68
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v0

    goto :goto_87

    :catch_68
    move-exception v0

    :try_start_69
    invoke-static {p2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Labcd/Ji$d;->j6(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_70
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    :try_start_71
    iget-object v1, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_66

    :try_start_74
    iget-boolean v3, p0, Labcd/Ji;->rN:Z

    if-eqz v3, :cond_83

    monitor-exit v1
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_84

    :try_start_79
    iget-object v0, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_91

    :try_start_7c
    iput-object v2, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v0

    :goto_7f
    return-void

    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    :try_start_82
    throw v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_91

    :cond_83
    :try_start_83
    throw v0

    :catchall_84
    move-exception v0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_84

    :try_start_86
    throw v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_66

    :goto_87
    :try_start_87
    iget-object v1, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_91

    :try_start_8a
    iput-object v2, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_91

    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_a3

    const-wide v2, 0x2aa66387fa9aec0L  # 8.07321792414751E-296

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    throw v0
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V
    .registers 23
    .annotation runtime Labcd/su;
        method = -0x4f19a7f3b50980b0L
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    sget-boolean v6, Labcd/Ji;->DW:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_32

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v2, v6, v7

    const/4 v9, 0x2

    aput-object v3, v6, v9

    const/4 v9, 0x3

    aput-object p4, v6, v9

    const/4 v9, 0x4

    aput-object v4, v6, v9

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, v5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v10, 0x5

    aput-object v9, v6, v10

    const-wide v9, 0x165a02e3affe7298L  # 5.309635907960212E-201

    invoke-static {v9, v10, v0, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_32
    invoke-direct {v0, v2}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_106

    if-eqz v3, :cond_3c

    const/4 v6, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    if-eqz v4, :cond_40

    const/4 v8, 0x1

    :cond_40
    if-nez v8, :cond_79

    if-nez v6, :cond_106

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v15, 0x0

    move-object/from16 v11, p4

    move-object v12, v3

    invoke-virtual/range {v10 .. v15}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    iget-object v3, v4, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_106

    :cond_79
    if-nez v6, :cond_82

    if-nez v5, :cond_106

    :goto_7d
    invoke-direct {v0, v1, v2, v4}, Labcd/Ji;->DW(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto/16 :goto_106

    :cond_82
    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, v3, Labcd/Ji$d$a;->Hw:J

    iget-object v6, v4, Labcd/Dw$e;->we:Ljava/lang/String;

    iget-object v3, v3, Labcd/Ji$d$a;->FH:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Labcd/FileSystemUtils;->j6(JJ)Z

    move-result v12

    xor-int/2addr v12, v7

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v7, v13

    if-eqz v12, :cond_9d

    if-eqz v7, :cond_9d

    if-nez v5, :cond_106

    goto :goto_7d

    :cond_9d
    const-string v13, " != "

    const-string v14, " "

    if-eqz v12, :cond_df

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v13

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v15, 0x0

    move-object/from16 v11, p4

    move-object v12, v3

    invoke-virtual/range {v10 .. v15}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLabcd/Fw;)Labcd/Dw$e;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    iget-object v3, v4, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v8, v9}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_106

    :cond_df
    if-eqz v7, :cond_106

    if-nez v5, :cond_106

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    :cond_106
    :goto_106
    return-void
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2a220476875fbec0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x4611ff8d09cd77f0L  # 3.564919862697564E29

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
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

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Z)V

    goto :goto_3c

    :cond_2f
    invoke-direct {p0, p3}, Labcd/Ji;->VH(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000  # 100.0f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    :goto_3c
    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x4611ff8d09cd77f0L  # 3.564919862697564E29

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V
    .registers 33
    .annotation runtime Labcd/su;
        method = -0x15de10bebcd533e0L
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    :try_start_a
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_28

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v12}, Ljava/lang/Float;-><init>(F)V

    new-instance v8, Ljava/lang/Float;

    invoke-direct {v8, v13}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, -0x1f5185f8b3c1ad40L  # -5.2304049843786166E157

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    const/4 v0, 0x1

    invoke-direct {v10, v0, v11, v12}, Labcd/Ji;->j6(ZLjava/lang/String;F)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v10, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;

    move-result-object v1

    iget-object v2, v1, Labcd/Dw$e;->Ws:Ljava/util/List;

    if-eqz v2, :cond_85

    iget-object v1, v1, Labcd/Dw$e;->Ws:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Dw$e;

    iget-boolean v3, v2, Labcd/Dw$e;->J8:Z

    if-nez v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_66
    .catchall {:try_start_a .. :try_end_66} :catchall_265

    move-object/from16 v15, p2

    :try_start_68
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/Dw$e;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_82
    move-object/from16 v15, p2

    goto :goto_51

    :cond_85
    move-object/from16 v15, p2

    invoke-static/range {p2 .. p2}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_a2
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v7, 0x0

    :goto_ad
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_262

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Labcd/Ji$d;->FH(Ljava/lang/String;)Labcd/Ji$d$a;

    move-result-object v4

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Labcd/Dw$e;

    if-eqz v4, :cond_c9

    const/4 v1, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v1, 0x0

    :goto_ca
    sub-float v2, v13, v12

    int-to-float v0, v7

    move/from16 v18, v7

    int-to-float v7, v6

    mul-float v0, v0, v2

    div-float/2addr v0, v7

    add-float/2addr v0, v12

    div-float/2addr v2, v7

    add-float v7, v0, v2

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v12, 0x0

    if-eqz v2, :cond_184

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_184

    if-eqz v1, :cond_105

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete local "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {v3}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Labcd/Ji$d;->j6(Ljava/lang/String;)V

    :cond_101
    move/from16 v26, v6

    goto/16 :goto_21e

    :cond_105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Labcd/FileSystemUtils;->isDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_141

    invoke-direct {v10, v3}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_101

    iget-object v1, v10, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v1, v4}, Labcd/Dw;->j6(Ljava/lang/String;)Labcd/Dw$e;

    move-result-object v1

    iget-object v1, v1, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-virtual {v9, v3, v1, v12, v13}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v0

    move/from16 v26, v6

    move v6, v7

    invoke-direct/range {v1 .. v6}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V

    goto/16 :goto_21e

    :cond_141
    move/from16 v26, v6

    invoke-direct {v10, v3}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-static {v3}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v22

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Labcd/Ji;->Hw:Labcd/Dw;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v25}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Labcd/Fw;)Labcd/Dw$e;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iget-object v0, v1, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v9, v3, v0, v1, v2}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_21e

    :cond_184
    move/from16 v26, v6

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_211

    invoke-interface {v14, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_211

    if-eqz v1, :cond_1b4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropbox delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    iget-object v0, v10, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v1, v5, Labcd/Dw$e;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/Dw;->DW(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Labcd/Ji$d;->j6(Ljava/lang/String;)V

    goto/16 :goto_21e

    :cond_1b4
    iget-boolean v1, v5, Labcd/Dw$e;->v5:Z

    if-eqz v1, :cond_1f3

    invoke-direct {v10, v3}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21e

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e2

    invoke-static {v3}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    goto :goto_1e2

    :cond_1cb
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e2
    :goto_1e2
    iget-object v1, v5, Labcd/Dw$e;->we:Ljava/lang/String;

    invoke-virtual {v9, v3, v1, v12, v13}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v4, v5, Labcd/Dw$e;->gn:Ljava/lang/String;

    :goto_1e9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;FF)V

    goto :goto_21e

    :cond_1f3
    invoke-direct {v10, v3}, Labcd/Ji;->EQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    invoke-direct {v10, v9, v3, v5}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Dw$e;)V

    goto :goto_21e

    :cond_211
    iget-boolean v1, v5, Labcd/Dw$e;->v5:Z

    if-eqz v1, :cond_221

    invoke-direct {v10, v3}, Labcd/Ji;->tp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21e

    iget-object v4, v5, Labcd/Dw$e;->gn:Ljava/lang/String;

    goto :goto_1e9

    :cond_21e
    :goto_21e
    move/from16 v0, v18

    goto :goto_245

    :cond_221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v6, v5

    move-object v5, v0

    move/from16 v0, v18

    invoke-direct/range {v1 .. v7}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V

    :goto_245
    iget-object v1, v10, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v1
    :try_end_248
    .catchall {:try_start_68 .. :try_end_248} :catchall_263

    :try_start_248
    iget-boolean v2, v10, Labcd/Ji;->rN:Z

    if-nez v2, :cond_258

    monitor-exit v1

    add-int/lit8 v7, v0, 0x1

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v6, v26

    const/4 v0, 0x1

    goto/16 :goto_ad

    :cond_258
    new-instance v0, Labcd/Ji$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Labcd/Ji$a;-><init>(Labcd/Di;)V

    throw v0

    :catchall_25f
    move-exception v0

    monitor-exit v1
    :try_end_261
    .catchall {:try_start_248 .. :try_end_261} :catchall_25f

    :try_start_261
    throw v0
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_263

    :cond_262
    return-void

    :catchall_263
    move-exception v0

    goto :goto_268

    :catchall_265
    move-exception v0

    move-object/from16 v15, p2

    :goto_268
    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_28c

    const-wide v2, -0x1f5185f8b3c1ad40L  # -5.2304049843786166E157

    new-instance v8, Ljava/lang/Float;

    move/from16 v1, p4

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(F)V

    new-instance v12, Ljava/lang/Float;

    move/from16 v1, p5

    invoke-direct {v12, v1}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v9, v12

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28c
    goto :goto_28e

    :goto_28d
    throw v0

    :goto_28e
    goto :goto_28d
.end method

.method private j6(Labcd/Ji$d;Ljava/lang/String;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2b4412dd6b563189L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x87c88741a4fddb9L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {p1, p2}, Labcd/Ji$d;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_3c

    :try_start_18
    iget-object v1, p0, Labcd/Ji;->Hw:Labcd/Dw;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Labcd/Dw;->j6(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Labcd/Dw$e;

    move-result-object v1
    :try_end_23
    .catch Labcd/Pw; {:try_start_18 .. :try_end_23} :catch_25
    .catchall {:try_start_18 .. :try_end_23} :catchall_3c

    :goto_23
    move-object v6, v1

    goto :goto_2e

    :catch_25
    move-exception v1

    :try_start_26
    iget v2, v1, Labcd/Pw;->DW:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_3b

    const/4 v1, 0x0

    goto :goto_23

    :goto_2e
    invoke-virtual {p1, p2}, Labcd/Ji$d;->FH(Ljava/lang/String;)Labcd/Ji$d$a;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Labcd/Ji$d$a;Ljava/lang/String;Labcd/Dw$e;Z)V

    return-void

    :cond_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x87c88741a4fddb9L

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method private j6(Labcd/Ji$e;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x11b559dbcb687c80L
    .end annotation

    const-wide v0, 0x1189176d74cf0968L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_8e

    const/4 v3, 0x0

    :try_start_10
    iput-boolean v3, p0, Labcd/Ji;->rN:Z

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_8b

    :try_start_13
    iget-object v2, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v3, p1, Labcd/Ji$e;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v3, p1, Labcd/Ji$e;->FH:Ljava/lang/String;

    iget-object v10, p1, Labcd/Ji$e;->Hw:Ljava/lang/String;

    invoke-static {v3}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z

    iget-object v4, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v4}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v4

    new-instance v11, Labcd/Ji$d;

    iget-wide v5, v4, Labcd/Dw$a;->Zo:J

    iget-object v7, v4, Labcd/Dw$a;->DW:Ljava/lang/String;

    move-object v4, v11

    move-object v8, v3

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Labcd/Ji$d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Labcd/Ji$d;->j6()V

    new-instance v4, Labcd/Gi;

    invoke-direct {v4, p0, v3}, Labcd/Gi;-><init>(Labcd/Ji;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    goto :goto_59

    :cond_3e
    invoke-direct {p0, v2}, Labcd/Ji;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Labcd/Ji$d;

    invoke-direct {v11, v3}, Labcd/Ji$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Labcd/Ji$d;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v4, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v4}, Labcd/Dw;->j6()Labcd/Dw$a;

    move-result-object v4

    iget-wide v4, v4, Labcd/Dw$a;->Zo:J

    iget-wide v6, v11, Labcd/Ji$d;->FH:J
    :try_end_55
    .catchall {:try_start_13 .. :try_end_55} :catchall_8e

    cmp-long v8, v4, v6

    if-nez v8, :cond_65

    :goto_59
    :try_start_59
    invoke-direct {p0, v11, v2, v10}, Labcd/Ji;->j6(Labcd/Ji$d;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_60

    :try_start_5c
    invoke-virtual {v11}, Labcd/Ji$d;->j6()V

    return-void

    :catchall_60
    move-exception v2

    invoke-virtual {v11}, Labcd/Ji$d;->j6()V

    throw v2

    :cond_65
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Directory \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' was downloaded from the Dropbox of \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Labcd/Ji$d;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'. Please login to this account."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8b
    .catchall {:try_start_5c .. :try_end_8b} :catchall_8e

    :catchall_8b
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v3
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_96

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_96
    throw v2
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
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x5726c94a456d40e1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Float;

    invoke-direct {v6, p3}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, 0x23b80fa323864027L  # 1.29311499955227E-136

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_2f

    :try_start_1b
    iput-boolean p1, p0, Labcd/Ji;->j3:Z

    iput-object p2, p0, Labcd/Ji;->aM:Ljava/lang/String;

    float-to-int v1, p3

    iput v1, p0, Labcd/Ji;->Mr:I

    new-instance v1, Labcd/Hi;

    invoke-direct {v1, p0}, Labcd/Hi;-><init>(Labcd/Ji;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_49

    const-wide v2, 0x23b80fa323864027L  # 1.29311499955227E-136

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, p3}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
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

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1ab52dbabd2b7ee0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->fileLength(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p2, Labcd/Dw$e;->DW:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    iget-object v0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    iget-object v1, p2, Labcd/Dw$e;->gn:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Dw;->j6(Ljava/lang/String;Ljava/lang/String;)Labcd/Dw$d;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/aide/common/Xa;->j6(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return p1

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x1ab52dbabd2b7ee0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method static synthetic tp(Labcd/Ji;)Labcd/Ji$b;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->J8:Labcd/Ji$b;

    return-object p0
.end method

.method private tp(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fbe16ea2b0bb589L
    .end annotation

    const-wide v0, -0x1d1ca18a593a8efL  # -6.322436833861282E299

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "bin"

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method static synthetic u7(Labcd/Ji;)Labcd/Dw;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->Hw:Labcd/Dw;

    return-object p0
.end method

.method private u7(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xd922757ef7b0139L
    .end annotation

    const-wide v0, 0xc54990b7fe241L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".aidedropbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return p1

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method static synthetic v5(Labcd/Ji;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    return-object p0
.end method

.method private we()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1ffcf8da9d907af3L
    .end annotation

    const-wide v0, 0x13da109b40f45b0dL  # 4.839033457214054E-213

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DropBox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private we(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x40b991c087950115L
    .end annotation

    const-wide v0, -0x2502cbd07ae6fb6bL  # -2.0243157528434405E130

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Ji;->gn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x18d34368f1ebb00L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "Sync with Dropbox..."

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(Labcd/Ji$c;)V
    .registers 6

    const-wide v0, -0x4e15dd3055aa4ccL

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->Ws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x3588543b7c026f51L  # 8.128222490573646E-51

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public DW(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x179bfced26de6d17L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    iput-boolean v4, p0, Labcd/Ji;->gn:Z

    invoke-virtual {p0, v3, v4}, Labcd/Ji;->j6(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/aide/ui/scm/ua;->Hw(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_45

    goto :goto_16

    :cond_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v2

    :goto_4f
    goto :goto_4e
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x4cff3bd9da586abL  # -2.386348071570319E285

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ji;->Mr:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x58869537ee654dc7L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0x460eb170858a75d3L  # 3.039699690608735E29

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0xb0bd8a3678a7e74L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->aM(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    :cond_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, -0x5ba3ec3d633d1fb0L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget-boolean v3, p0, Labcd/Ji;->j3:Z

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, -0x163d1d6cc8122520L  # -2.8911156170810394E201

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Labcd/Di;

    invoke-direct {v3, p0}, Labcd/Di;-><init>(Labcd/Ji;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x224518b93541a568L  # -3.2806923716207093E143

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/scm/ua;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public gn()V
    .registers 5

    const-wide v0, -0x16bc1fa0df56d1e8L  # -1.1886281333463632E199

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v2}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/a;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/a;->u7()V

    invoke-direct {p0}, Labcd/Ji;->we()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Ji;->VH:Z

    iput-boolean v2, p0, Labcd/Ji;->Zo:Z
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x129c1cd367322520L  # -8.775358292035007E218

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->lg:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2f

    const/4 v3, 0x1

    :try_start_10
    iput-boolean v3, p0, Labcd/Ji;->rN:Z

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2c

    :try_start_13
    iget-object v2, p0, Labcd/Ji;->U2:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_2f

    :try_start_16
    iget-object v3, p0, Labcd/Ji;->a8:Ljava/nio/channels/InterruptibleChannel;

    if-eqz v3, :cond_27

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Labcd/Ii;

    invoke-direct {v5, p0, v3}, Labcd/Ii;-><init>(Labcd/Ji;Ljava/nio/channels/InterruptibleChannel;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_27
    monitor-exit v2

    return-void

    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2f

    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_37

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v2
.end method

.method public j6(Labcd/Ji$c;)V
    .registers 6

    const-wide v0, -0x4f5ca66dbfbcd6c7L  # -2.138993831829587E-74

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->Ws:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;Labcd/Ji$b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1e58bd4e188ad634L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_23

    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Labcd/Ji;->tp:Z

    iput-object p1, p0, Labcd/Ji;->J0:Ljava/lang/String;

    iput-object p2, p0, Labcd/Ji;->J8:Labcd/Ji$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/Ji;->Zo:Z

    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1e58bd4e188ad634L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6566d3e24b0ed8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->x9()V

    :cond_19
    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_36

    const/4 v1, 0x1

    :try_start_1d
    iput-boolean v1, p0, Labcd/Ji;->tp:Z

    iget-object v1, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    new-instance v2, Labcd/Ji$e;

    invoke-direct {v2, p1, p2}, Labcd/Ji$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/Ji;->Zo:Z

    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_33

    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x6566d3e24b0ed8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ji;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x58262b7c64429f70L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-eqz p2, :cond_20

    invoke-virtual {p0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->x9()V

    :cond_20
    iget-object v0, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_57

    :try_start_23
    new-instance v1, Labcd/Ji$e;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Labcd/Ji$e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Ji;->QX:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Ji$e;

    invoke-virtual {v3, v1}, Labcd/Ji$e;->j6(Labcd/Ji$e;)Z

    move-result v3

    if-eqz v3, :cond_2f

    monitor-exit v0

    return-void

    :cond_43
    iput-boolean p2, p0, Labcd/Ji;->tp:Z

    iget-object v2, p0, Labcd/Ji;->EQ:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Labcd/Ji;->Zo:Z

    iget-object v1, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_23 .. :try_end_56} :catchall_54

    :try_start_56
    throw v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    sget-boolean v1, Labcd/Ji;->FH:Z

    if-eqz v1, :cond_6c

    const-wide v2, -0x58262b7c64429f70L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v0

    :goto_6e
    goto :goto_6d
.end method

.method public j6(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x2a57c7a21a0524c7L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2e

    goto :goto_16

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    goto :goto_38

    :goto_37
    throw v2

    :goto_38
    goto :goto_37
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0xcd317fa8a92d709L  # -6.315961470158654E246

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public tp()V
    .registers 5

    const-wide v0, -0xe86de27bd637c04L  # -4.091355301029645E238

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Ji;->j6()V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7()V
    .registers 6

    const-wide v0, 0x5453bddfa5b0c139L  # 1.686720084022484E98

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/Ji;->v5:Z

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Ji;->v5:Z

    iput-boolean v2, p0, Labcd/Ji;->Zo:Z

    iget-object v2, p0, Labcd/Ji;->Hw:Labcd/Dw;

    invoke-virtual {v2}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/a;

    invoke-virtual {v2}, Lcom/dropbox/client2/android/a;->tp()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_58

    if-eqz v3, :cond_54

    :try_start_23
    invoke-virtual {v2}, Lcom/dropbox/client2/android/a;->EQ()Ljava/lang/String;

    invoke-virtual {v2}, Labcd/Ww;->VH()Labcd/Xw;

    move-result-object v2

    iget-object v3, v2, Labcd/_w;->j6:Ljava/lang/String;

    iget-object v2, v2, Labcd/_w;->DW:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Labcd/Ji;->DW(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_34} :catch_41
    .catchall {:try_start_23 .. :try_end_34} :catchall_58

    const/4 v3, 0x1

    :try_start_35
    iput-boolean v3, p0, Labcd/Ji;->VH:Z

    iget-object v3, p0, Labcd/Ji;->u7:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_57

    :catchall_3e
    move-exception v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_41} :catch_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_58

    :catch_41
    move-exception v2

    :try_start_42
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-direct {p0}, Labcd/Ji;->J0()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Dropbox"

    const-string v4, "Couldn\'t authenticate with Dropbox."

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_54
    invoke-direct {p0}, Labcd/Ji;->J0()V
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_58

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_60

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_60
    throw v2
.end method

.method public v5()Ljava/lang/String;
    .registers 5

    const-wide v0, -0xd9d2fb90c496ac0L

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji;->XL:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget-object v3, p0, Labcd/Ji;->aM:Ljava/lang/String;

    monitor-exit v2

    return-object v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x23344e03744d71f0L  # -1.0306553495481329E139

    :try_start_5
    sget-boolean v2, Labcd/Ji;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/aa;->v5()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-direct {p0, p1}, Labcd/Ji;->we(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Labcd/Ji;->j6(Ljava/lang/String;Z)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Ji;->FH:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method
