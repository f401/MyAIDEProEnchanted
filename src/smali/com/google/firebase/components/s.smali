.class final synthetic Lcom/google/firebase/components/s;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/By;


# instance fields
.field private final DW:Lcom/google/firebase/components/c;

.field private final j6:Lcom/google/firebase/components/d;


# direct methods
.method private constructor <init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/s;->j6:Lcom/google/firebase/components/d;

    iput-object p2, p0, Lcom/google/firebase/components/s;->DW:Lcom/google/firebase/components/c;

    return-void
.end method

.method public static j6(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)Labcd/By;
    .registers 3

    new-instance v0, Lcom/google/firebase/components/s;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/components/s;-><init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/components/s;->j6:Lcom/google/firebase/components/d;

    iget-object v1, p0, Lcom/google/firebase/components/s;->DW:Lcom/google/firebase/components/c;

    invoke-static {v0, v1}, Lcom/google/firebase/components/r;->j6(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
