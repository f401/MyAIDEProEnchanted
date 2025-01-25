.class Lcom/aide/common/H;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Ljava/lang/Runnable;

.field final J0:Ljava/lang/Runnable;

.field final J8:Ljava/lang/String;

.field final Ws:Z

.field final gn:Lcom/aide/common/ab;

.field final tp:Ljava/lang/String;

.field final u7:Ljava/lang/String;

.field final we:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    :try_start_0
    const-string v0, "com.aide.common.H"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_14

    const-wide v1, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v3, 0x5587321e6abcb8b3L  # 1.0390523747630432E104

    invoke-static {v0, v1, v2, v3, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lcom/aide/common/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/aide/common/H;->gn:Lcom/aide/common/ab;

    iput-object p2, p0, Lcom/aide/common/H;->u7:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/H;->tp:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/common/H;->EQ:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/aide/common/H;->we:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/common/H;->J0:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/aide/common/H;->J8:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/aide/common/H;->Ws:Z

    return-void
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 2
    .annotation runtime Labcd/su;
        method = -0x1ae466fd0c16647L
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/MainListener;->onCnommonEditTextDialogShow(Ljava/lang/Object;Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
