.class public final synthetic Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final INSTANCE:Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/listener/MailLogger$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method
