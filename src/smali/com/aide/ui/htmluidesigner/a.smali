.class Lcom/aide/ui/htmluidesigner/a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/G;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/htmluidesigner/a;

    const-wide v2, -0x35018d07d587c48bL    # -1.8227776861077162E53

    const-wide v4, 0x609fbea96fb74c0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/a;->FH:Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x666c20917d6d958L
    .end annotation

    const-wide v2, 0x1998e059ab064bc0L    # 2.286913069139882E-185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1998e059ab064bc0L    # 2.286913069139882E-185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/a;->FH:Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;

    invoke-static {v0}, Lcom/aide/ui/aa;->DW(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
