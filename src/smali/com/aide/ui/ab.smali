.class final Lcom/aide/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/ib;->we(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/ab;

    const-wide v2, -0xfe2d89ab5b35368L    # -1.131548515611858E232

    const-wide v4, -0x4686d6a247f4c600L    # -7.753512396624097E-32

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/ab;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1ea7c9906d46288bL
    .end annotation

    const-wide v4, -0x138ddd8a09a24b54L    # -2.4419974675626054E214

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x138ddd8a09a24b54L    # -2.4419974675626054E214

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/ab;->FH:Landroid/app/Activity;

    const-string v2, "key_outdated"

    invoke-virtual {v0, v1, v2}, Labcd/Ek;->FH(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/ab;->FH:Landroid/app/Activity;

    invoke-static {v0}, Lcom/aide/ui/ib;->DW(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
