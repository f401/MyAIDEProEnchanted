.class La/f/q;
.super Ljava/lang/Object;

# interfaces
.implements La/b/o;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/f/q;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, La/f/q;->a:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/f/q;->a:Ljava/lang/String;

    return-object v0
.end method
