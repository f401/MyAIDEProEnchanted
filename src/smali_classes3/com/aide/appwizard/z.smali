.class Lcom/aide/appwizard/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/B;->j6(Lcom/aide/appwizard/runtime/i$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/Boolean;",
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
.field final FH:Lcom/aide/appwizard/runtime/i$b;

.field final Hw:Lcom/aide/appwizard/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, 0x1a608a568928d9e0L  # 1.245656168822645E-181

    const-class v4, Lcom/aide/appwizard/z;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/B;Lcom/aide/appwizard/runtime/i$b;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/appwizard/z;->Hw:Lcom/aide/appwizard/B;

    iput-object p2, p0, Lcom/aide/appwizard/z;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Boolean;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x49582f43c010a9cbL
    .end annotation

    const-wide v0, 0x65f8562507f8d964L  # 1.6157551395977937E183

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/z;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/z;->FH:Lcom/aide/appwizard/runtime/i$b;

    invoke-virtual {v2, p1}, Lcom/aide/appwizard/runtime/i$b;->FH(Ljava/lang/Boolean;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/z;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/aide/appwizard/z;->j6(Ljava/lang/Boolean;)V

    return-void
.end method
