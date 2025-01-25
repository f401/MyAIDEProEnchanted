.class final Lcom/aide/licensing/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/licensing/i;->v5(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/accounts/Account;",
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45f36b3cd868bc30L  # 9.615772133339158E28

    const-wide v2, 0x33fa762313fd2107L  # 2.6347223870718772E-58

    const-class v4, Lcom/aide/licensing/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/accounts/Account;

    check-cast p2, Landroid/accounts/Account;

    invoke-virtual {p0, p1, p2}, Lcom/aide/licensing/h;->j6(Landroid/accounts/Account;Landroid/accounts/Account;)I

    move-result p1

    return p1
.end method

.method public j6(Landroid/accounts/Account;Landroid/accounts/Account;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x10edeff6e2261b7bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/h;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x61488824233f5800L  # 4.311189835990727E160

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/licensing/i;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/aide/licensing/i;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return p1

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/h;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x61488824233f5800L  # 4.311189835990727E160

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method
