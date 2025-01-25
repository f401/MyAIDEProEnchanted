.class Labcd/Ng;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Og;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final FH:Labcd/Og;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x30bbb753af4ef41fL  # -7.167702528235871E73

    const-wide v2, -0x1ebf9c5d4cca9788L  # -2.88021890858518E160

    const-class v4, Labcd/Ng;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Og;)V
    .registers 2

    iput-object p1, p0, Labcd/Ng;->FH:Labcd/Og;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/Ng;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x591ff8fe37651dbbL
    .end annotation

    const-wide v0, -0x1230be7627b03f45L  # -8.826740739621906E220

    :try_start_5
    sget-boolean v2, Labcd/Ng;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/ul;->j6(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ng;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
