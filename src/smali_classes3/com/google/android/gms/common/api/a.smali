.class public final Lcom/google/android/gms/common/api/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/a$c;,
        Lcom/google/android/gms/common/api/a$d$a;,
        Lcom/google/android/gms/common/api/a$d$b;,
        Lcom/google/android/gms/common/api/a$g;,
        Lcom/google/android/gms/common/api/a$h;,
        Lcom/google/android/gms/common/api/a$i;,
        Lcom/google/android/gms/common/api/a$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/common/api/a$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$i<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/common/api/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/common/api/a$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$j<",
            "*>;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field private final v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$a<",
            "TC;TO;>;",
            "Lcom/google/android/gms/common/api/a$g<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->v5:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/api/a;->j6:Lcom/google/android/gms/common/api/a$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->DW:Lcom/google/android/gms/common/api/a$i;

    iput-object p3, p0, Lcom/google/android/gms/common/api/a;->FH:Lcom/google/android/gms/common/api/a$g;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a;->Hw:Lcom/google/android/gms/common/api/a$j;

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/common/api/a$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/a$a<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->j6:Lcom/google/android/gms/common/api/a$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->j6:Lcom/google/android/gms/common/api/a$a;

    return-object v0
.end method

.method public final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a;->v5:Ljava/lang/String;

    return-object v0
.end method
