.class Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types$MembersClosureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field final compoundScope:Lcom/sun/tools/javac/code/Scope$CompoundScope;

.field final skipInterfaces:Z

.field final this$1:Lcom/sun/tools/javac/code/Types$MembersClosureCache;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Types$MembersClosureCache;ZLcom/sun/tools/javac/code/Scope$CompoundScope;)V
    .registers 4

    .line 2166
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->this$1:Lcom/sun/tools/javac/code/Types$MembersClosureCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2167
    iput-boolean p2, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->skipInterfaces:Z

    .line 2168
    iput-object p3, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->compoundScope:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    .line 2169
    return-void
.end method


# virtual methods
.method matches(Z)Z
    .registers 3

    .line 2172
    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$MembersClosureCache$Entry;->skipInterfaces:Z

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
