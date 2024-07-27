.class Labcd/qh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/rh;->FH(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final EQ:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field final Hw:Ljava/lang/String;

.field final J0:Ljava/lang/String;

.field final J8:Ljava/lang/String;

.field final QX:Labcd/rh;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final VH:Ljava/util/Date;

.field final Ws:Ljava/lang/String;

.field final Zo:Ljava/lang/String;

.field final gn:Ljava/util/Date;

.field final tp:Ljava/lang/String;

.field final u7:Ljava/math/BigInteger;

.field final v5:Ljava/lang/String;

.field final we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/qh;

    const-wide v2, 0x7ec73c7e3cf488bL

    const-wide v4, -0xde58606f332a13cL    # -4.4136348437610534E241

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/rh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iput-object p1, p0, Labcd/qh;->QX:Labcd/rh;

    iput-object p2, p0, Labcd/qh;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/qh;->Hw:Ljava/lang/String;

    iput-object p4, p0, Labcd/qh;->v5:Ljava/lang/String;

    iput-object p5, p0, Labcd/qh;->Zo:Ljava/lang/String;

    iput-object p6, p0, Labcd/qh;->VH:Ljava/util/Date;

    iput-object p7, p0, Labcd/qh;->gn:Ljava/util/Date;

    iput-object p8, p0, Labcd/qh;->u7:Ljava/math/BigInteger;

    iput-object p9, p0, Labcd/qh;->tp:Ljava/lang/String;

    iput-object p10, p0, Labcd/qh;->EQ:Ljava/lang/String;

    iput-object p11, p0, Labcd/qh;->we:Ljava/lang/String;

    iput-object p12, p0, Labcd/qh;->J0:Ljava/lang/String;

    iput-object p13, p0, Labcd/qh;->J8:Ljava/lang/String;

    iput-object p14, p0, Labcd/qh;->Ws:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x14d5ed7131ece0fbL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/qh;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6df740d8eb41e397L    # 5.253413744216414E221

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->aM()Lcom/aide/ui/build/android/O;

    move-result-object v0

    iget-object v1, p0, Labcd/qh;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/qh;->Hw:Ljava/lang/String;

    iget-object v3, p0, Labcd/qh;->v5:Ljava/lang/String;

    iget-object v4, p0, Labcd/qh;->Zo:Ljava/lang/String;

    iget-object v5, p0, Labcd/qh;->VH:Ljava/util/Date;

    iget-object v6, p0, Labcd/qh;->gn:Ljava/util/Date;

    iget-object v7, p0, Labcd/qh;->u7:Ljava/math/BigInteger;

    iget-object v8, p0, Labcd/qh;->tp:Ljava/lang/String;

    iget-object v9, p0, Labcd/qh;->EQ:Ljava/lang/String;

    iget-object v10, p0, Labcd/qh;->we:Ljava/lang/String;

    iget-object v11, p0, Labcd/qh;->J0:Ljava/lang/String;

    iget-object v12, p0, Labcd/qh;->J8:Ljava/lang/String;

    iget-object v13, p0, Labcd/qh;->Ws:Ljava/lang/String;

    invoke-virtual/range {v0 .. v13}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Labcd/ph;

    invoke-direct {v1, p0, v0}, Labcd/ph;-><init>(Labcd/qh;Z)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/qh;->DW:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x6df740d8eb41e397L    # 5.253413744216414E221

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
