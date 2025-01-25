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
    .registers 5

    const-wide v0, -0x1bb23df1ef9f4583L  # -1.4720129579006365E175

    const-wide v2, -0x2e19d4cfc59ddde0L  # -3.4453162326382205E86

    const-class v4, Lcom/aide/ui/Ka;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xb01d0b4d6663d8L
    .end annotation

    const-wide v0, -0x2af507b4a7502800L  # -4.719194612474896E101

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ka;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v2}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;

    move-result-object v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;Landroid/view/KeyCharacterMap;)Landroid/view/KeyCharacterMap;

    :cond_1e
    iget-object v2, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v2}, Lcom/aide/ui/La;->j6(Lcom/aide/ui/La;)Landroid/view/KeyCharacterMap;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/Ka;->FH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_42

    array-length v3, v2
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_43

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    :try_start_36
    iget-object v6, p0, Lcom/aide/ui/Ka;->Hw:Lcom/aide/ui/La;

    invoke-static {v6}, Lcom/aide/ui/La;->DW(Lcom/aide/ui/La;)Lcom/aide/ui/MainActivity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_43

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_42
    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ka;->DW:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method
