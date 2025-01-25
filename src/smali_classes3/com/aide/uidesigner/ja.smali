.class final Lcom/aide/uidesigner/ja;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x1dd2b88118878335L  # 5.07954636645831E-165

    const-class v4, Lcom/aide/uidesigner/ja;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/ja;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/ja;->Hw:Lcom/aide/uidesigner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x197824e9d4e8f5e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ja;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x31eae9a6cdcc1b20L  # 3.119523682637055E-68

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/uidesigner/ja;->FH:Lcom/aide/uidesigner/s;

    iget-object v1, p0, Lcom/aide/uidesigner/ja;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {v0, v1, p2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ja;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x31eae9a6cdcc1b20L  # 3.119523682637055E-68

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method
