.class public La/b/g/m;
.super La/b/f/w;

# interfaces
.implements La/b/g/s;


# instance fields
.field private final a:La/b/b;


# direct methods
.method public constructor <init>(La/b/b;)V
    .registers 2

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/b/g/m;->a:La/b/b;

    return-void
.end method


# virtual methods
.method public a(La/b/c;)V
    .registers 3

    iget-object v0, p0, La/b/g/m;->a:La/b/b;

    invoke-virtual {v0, p1}, La/b/b;->a(La/b/c;)V

    return-void
.end method
