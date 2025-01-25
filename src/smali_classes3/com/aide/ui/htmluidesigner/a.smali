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
    .registers 5

    const-wide v0, -0x35018d07d587c48bL  # -1.8227776861077162E53

    const-wide v2, 0x609fbea96fb74c0L

    const-class v4, Lcom/aide/ui/htmluidesigner/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x1998e059ab064bc0L  # 2.286913069139882E-185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/a;->FH:Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;

    invoke-static {v2}, Lcom/aide/ui/aa;->DW(Landroid/content/Context;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/a;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method
