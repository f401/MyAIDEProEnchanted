.class final Lcom/aide/uidesigner/S;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, -0x3040bb56ff4bb9b8L  # -1.414301032060392E76

    const-class v4, Lcom/aide/uidesigner/S;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/S;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/S;->Hw:Lcom/aide/uidesigner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/S;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x6bcb23f950443ebdL
    .end annotation

    const-wide v0, 0x32b64c7d6d6443ecL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/S;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_13

    const/4 p1, 0x0

    :cond_13
    iget-object v2, p0, Lcom/aide/uidesigner/S;->FH:Lcom/aide/uidesigner/s;

    iget-object v3, p0, Lcom/aide/uidesigner/S;->Hw:Lcom/aide/uidesigner/a;

    invoke-virtual {v2, v3, p1}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/S;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
