.class public Labcd/VN;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/fO;


# instance fields
.field private final j6:Labcd/zL;


# direct methods
.method public constructor <init>(Labcd/zL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/VN;->j6:Labcd/zL;

    return-void
.end method


# virtual methods
.method public getContentType()Labcd/zL;
    .registers 2

    iget-object v0, p0, Labcd/VN;->j6:Labcd/zL;

    return-object v0
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 2

    return-void
.end method
