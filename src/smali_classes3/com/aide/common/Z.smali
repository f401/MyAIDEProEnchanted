.class Lcom/aide/common/Z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/aa;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
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
.field final FH:Lcom/aide/common/aa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, 0x3eb922ec775831d5L  # 1.4982474260154901E-6

    const-class v4, Lcom/aide/common/Z;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/Z;->FH:Lcom/aide/common/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb41cbb0c405e358L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Z;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2fb50e5f4b1a3720L  # 7.103296392355173E-79

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/aide/common/Z;->FH:Lcom/aide/common/aa;

    iget-object v0, v0, Lcom/aide/common/aa;->tp:Lcom/aide/common/ab;

    iget-object v1, p0, Lcom/aide/common/Z;->FH:Lcom/aide/common/aa;

    iget-object v1, v1, Lcom/aide/common/aa;->u7:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Z;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x2fb50e5f4b1a3720L  # 7.103296392355173E-79

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method
