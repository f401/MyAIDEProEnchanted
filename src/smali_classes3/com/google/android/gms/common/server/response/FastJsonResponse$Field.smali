.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastJsonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/a;


# instance fields
.field protected final DW:I

.field private EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$a<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field protected final FH:Z

.field protected final Hw:I

.field protected final VH:I

.field protected final Zo:Ljava/lang/String;

.field protected final gn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:I

.field private tp:Lcom/google/android/gms/common/server/response/zak;

.field private final u7:Ljava/lang/String;

.field protected final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/server/response/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/a;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/zaa;)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j6:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->VH:I

    const/4 p1, 0x0

    if-nez p8, :cond_19

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->gn:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->u7:Ljava/lang/String;

    goto :goto_1f

    :cond_19
    const-class p2, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->gn:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->u7:Ljava/lang/String;

    :goto_1f
    if-nez p9, :cond_24

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-void

    :cond_24
    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/zaa;->DW()Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-void
.end method

.method private final Zo()Lcom/google/android/gms/common/server/converter/zaa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/common/server/converter/zaa;->j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$a;)Lcom/google/android/gms/common/server/converter/zaa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-object p0
.end method

.method private final v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->u7:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->VH:I

    return v0
.end method

.method public final FH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final Hw()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->u7:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->tp:Lcom/google/android/gms/common/server/response/zak;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->tp:Lcom/google/android/gms/common/server/response/zak;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/zak;->j6(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$a;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lcom/google/android/gms/common/server/response/zak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->tp:Lcom/google/android/gms/common/server/response/zak;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeIn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeInArray"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeOut"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeOutArray"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "safeParcelFieldId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "concreteTypeName"

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->gn:Ljava/lang/Class;

    if-eqz v1, :cond_63

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    :cond_63
    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->EQ:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "converterName"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    :cond_74
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j6:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->FH:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Hw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->DW()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->Zo()Lcom/google/android/gms/common/server/converter/zaa;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->j6(Landroid/os/Parcel;I)V

    return-void
.end method
