.class final Lcom/google/firebase/iid/W;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/a;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/W;->j6:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/iid/W;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/iid/W;->DW:Ljava/lang/String;

    return-object v0
.end method
