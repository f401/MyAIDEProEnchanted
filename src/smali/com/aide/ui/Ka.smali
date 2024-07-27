.class Lcom/aide/ui/Ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/La;->j6(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/La;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/Ka;

    const-wide v2, -0x1bb23df1ef9f4583L    # -1.4720129579006365E175

    const-wide v4, -0x2e19d4cfc59ddde0L    # -3.4453162326382205E86

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/La;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    iput-object p2, p0, Lcom/aide/ui/Ka;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/s1243808733/aide/util/QuickKey;->quickKeyTextOnClick(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onClick_(Landroid/view/View;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xb01d0b4d6663d8L
    .end annotation

    const-wide v6, -0x2af507b4a7502800L    # -4.719194612474896E101

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2af507b4a7502800L    # -4.719194612474896E101

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v0}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v0}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/Ka;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    :try_start_1
    iget-object v4, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v4}, Lcom/aide/ui/La;->DW(Lcom/aide/ui/La;)Lcom/aide/ui/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/Ka;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method
